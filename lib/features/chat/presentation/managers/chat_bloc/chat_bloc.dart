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

  ChatBloc(this._messagingBloc, this._chatRepository, this.userId)
      : super(const ChatInProgress()) {
    _chatRepository.currentlyOpenedChatUserId = userId;

    on<ChatEvent>((event, emit) async {
      await event.map(
        messagesLoaded: (event) async => await _onMessagesLoaded(event, emit),
        newMessageAdded: (event) async => await _onNewMessageAdded(event, emit),
      );
    });

    _messagingBloc.stream.listen((messagingBlocState) {
      messagingBlocState.whenOrNull<void>(
        newMessageReceivedSuccessfully: _onNewMessageEmittedFromMessagingBloc,
        sendingMessageInProgress: _onNewMessageEmittedFromMessagingBloc,
      );
    });
  }

  final Queue<LocalChatMessage> _currentMessages = Queue();

  void _onNewMessageEmittedFromMessagingBloc(LocalChatMessage newMessage) {
    if (_isNewMessageForThisChat(newMessage)) {
      add(_ChatNewMessageAdded(newMessage));
    }
  }

  bool _isNewMessageForThisChat(LocalChatMessage newMessage) =>
      newMessage.userId == userId;

  @override
  Future<void> close() {
    _chatRepository.currentlyOpenedChatUserId = null;
    return super.close();
  }

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
}
