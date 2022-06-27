import 'dart:async';
import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:doors/features/chat/presentation/managers/messaging_bloc/messaging_bloc.dart';
import 'package:doors/features/chat/repository/chat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final String userId;
  final MessagingBloc _messagingBloc;
  final ChatRepository _chatRepository;

  late final StreamSubscription _messagingBlocStateStreamSubscription;
  final Queue<LocalChatMessage> _currentMessages = Queue();

  ChatBloc(
    this._chatRepository,
    this._messagingBloc,
    this.userId,
  ) : super(const ChatInProgress()) {
    on<ChatEvent>((event, emit) async {
      await event.map(
        messagesLoaded: (event) async => await _onMessagesLoaded(event, emit),
        newMessageAdded: (event) async => await _onNewMessageAdded(event, emit),
      );
    });

    _chatRepository.currentlyOpenedChatUserId = userId;

    _messagingBlocStateStreamSubscription =
        _messagingBloc.stream.listen((messagingBlocState) {
      messagingBlocState.whenOrNull<void>(
        newMessageReceivedSuccessfully: _onNewMessageEmittedFromMessagingBloc,
        sendingMessageInProgress: _onNewMessageEmittedFromMessagingBloc,
      );
    });
  }

  void _onNewMessageEmittedFromMessagingBloc(LocalChatMessage newMessage) {
    if (_isNewMessageForThisChat(newMessage)) {
      add(_ChatNewMessageAdded(newMessage));
    }
  }

  bool _isNewMessageForThisChat(LocalChatMessage newMessage) =>
      newMessage.userId == userId;

  Future<void> _onMessagesLoaded(
      ChatMessagesLoaded event, Emitter<ChatState> emit) async {
    if (_currentMessages.isNotEmpty) {
      emit(const ChatMoreMessagesInProgress());
    }

    final messages = await _chatRepository.getChatMessages(
      userId,
      _currentMessages.length,
    );

    for (var message in messages) {
      _currentMessages.addFirst(message);
    }

    emit(
      ChatMessagesLoadSuccess(
        UnmodifiableListView(_currentMessages),
        // if the returned list is not empty then we can load more messages form
        // local database.
        messages.isNotEmpty,
      ),
    );
  }

  Future<void> _onNewMessageAdded(
      _ChatNewMessageAdded event, Emitter<ChatState> emit) async {
    _currentMessages.addLast(event.newMessage);

    emit(ChatNewMessageAddedSuccessfully(event.newMessage));
  }

  @override
  Future<void> close() {
    _messagingBlocStateStreamSubscription.cancel();
    _chatRepository.currentlyOpenedChatUserId = null;
    _currentMessages.clear();
    return super.close();
  }
}
