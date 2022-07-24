import 'dart:async';
import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:doors/features/chat/presentation/managers/messaging_bloc/messaging_bloc.dart';
import 'package:doors/features/chat/repository/chat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final String userId;
  final MessagingBloc _messagingBloc;
  final ChatRepository _chatRepository;

  late final StreamSubscription _messagingBlocStateStreamSubscription;
  final Queue<LocalChatMessage> _currentMessages = Queue();
  final Queue<LocalChatMessage> _newMessages = Queue();

  ChatBloc(
    this._chatRepository,
    this._messagingBloc,
    this.userId,
  ) : super(const ChatInProgress()) {
    on<ChatMessagesLoaded>(
      _onMessagesLoaded,
      transformer: bloc_concurrency.droppable(),
    );

    on<_ChatNewMessageAdded>(_onNewMessageAdded);

    _chatRepository.currentlyOpenedChatUserId = userId;
    _chatRepository.markChatAsRead(userId);

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
      _currentMessages.length + _newMessages.length,
    );

    for (var message in messages) {
      _currentMessages.addFirst(message);
    }

    emit(
      ChatMessagesLoadSuccess(
        UnmodifiableListView(_currentMessages.toList()),
        // if the returned list is not empty then we can load more messages form
        // local database.
        messages.isNotEmpty,
      ),
    );
  }

  Future<void> _onNewMessageAdded(
      _ChatNewMessageAdded event, Emitter<ChatState> emit) async {
    _newMessages.addLast(event.newMessage);

    emit(ChatNewMessageAddedSuccessfully(event.newMessage));
  }

  @override
  Future<void> close() {
    _messagingBlocStateStreamSubscription.cancel();
    _chatRepository.currentlyOpenedChatUserId = null;
    _currentMessages.clear();
    _newMessages.clear();
    return super.close();
  }
}
