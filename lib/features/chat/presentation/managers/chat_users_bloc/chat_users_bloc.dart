import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/chat_user_info.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:doors/features/chat/presentation/managers/messaging_bloc/messaging_bloc.dart';
import 'package:doors/features/chat/repository/chat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_users_event.dart';
part 'chat_users_state.dart';
part 'chat_users_bloc.freezed.dart';

class ChatUsersBloc extends Bloc<ChatUsersEvent, ChatUsersState> {
  final ChatRepository _chatRepository;
  final MessagingBloc _messagingBloc;
  late final StreamSubscription _messagingBlocStateStreamSubscription;
  ChatUsersBloc(
    this._chatRepository,
    this._messagingBloc,
  ) : super(const ChatUsersInProgress()) {
    on<ChatUsersEvent>((event, emit) async {
      await event.map(
        loaded: (event) async => await _onChatUsersLoaded(event, emit),
        newMessageDispatched: (event) async =>
            await _onNewMessageDispatched(event, emit),
        unreadMessagesCountRested: (event) async =>
            await _onUnreadMessagesCountRested(event, emit),
      );
    });

    _messagingBlocStateStreamSubscription =
        _messagingBloc.stream.listen((messagingBlocState) {
      messagingBlocState.whenOrNull<void>(
        newMessageReceivedSuccessfully: _onNewMessageEmittedFromMessagingBloc,
        sendingMessageInProgress: _onNewMessageEmittedFromMessagingBloc,
      );
    });
  }

  final List<ChatUserInfo> _currentChatUsers = [];

  void _onNewMessageEmittedFromMessagingBloc(
    LocalChatMessage dispatchedMessage,
  ) {
    add(_ChatUsersNewMessageDispatched(dispatchedMessage));
  }

  Future<void> _onChatUsersLoaded(
    ChatUsersLoaded event,
    Emitter<ChatUsersState> emit,
  ) async {
    emit(const ChatUsersInProgress());

    _currentChatUsers.clear();

    _currentChatUsers.addAll(
      await _chatRepository.getUsersWithLatestMessageAndUnreadCounts(),
    );

    emit(ChatUsersLoadSuccess(UnmodifiableListView(_currentChatUsers)));
  }

  Future<void> _onNewMessageDispatched(
    _ChatUsersNewMessageDispatched event,
    Emitter<ChatUsersState> emit,
  ) async {
    final dispatchedMessage = event.dispatchedMessage;
    if (_isNewChatUser(dispatchedMessage.userId)) {
      final newChatUser =
          await _chatRepository.getChatUserInfo(dispatchedMessage.userId);

      _currentChatUsers.insert(
        0,
        newChatUser.copyWith(
          latestMessage: dispatchedMessage,
          unReadCount: 1,
        ),
      );

      // if it was empty before adding the new chatUser.
      if (_currentChatUsers.length == 1) {
        emit(ChatUsersLoadSuccess(UnmodifiableListView(_currentChatUsers)));
      } else {
        emit(ChatUsersNewChatUserAddedSuccess(_currentChatUsers.first));
      }
    } else {
      final indexOfChatUser = _currentChatUsers.indexWhere(
          (chatUser) => chatUser.userId == dispatchedMessage.userId);

      var chatUser = _currentChatUsers[indexOfChatUser];

      chatUser = chatUser.copyWith(latestMessage: dispatchedMessage);

      if (_chatRepository.currentlyOpenedChatUserId == chatUser.userId ||
          dispatchedMessage.isSendedByCurrentUser) {
        chatUser = chatUser.copyWith(unReadCount: 0);
      } else {
        chatUser = chatUser.copyWith(unReadCount: chatUser.unReadCount + 1);
      }

      _currentChatUsers.removeAt(indexOfChatUser);
      _currentChatUsers.insert(0, chatUser);

      emit(ChatUsersOrderUpdateSuccess(indexOfChatUser, chatUser));
    }
  }

  bool _isNewChatUser(String messageUserId) {
    return _currentChatUsers.firstWhereOrNull(
            (chatUserInfo) => chatUserInfo.userId == messageUserId) ==
        null;
  }

  Future<void> _onUnreadMessagesCountRested(
    ChatUsersUnreadMessagesCountRested event,
    Emitter<ChatUsersState> emit,
  ) async {
    final indexOfChatUser = _currentChatUsers
        .indexWhere((chatUser) => chatUser.userId == event.userId);
    var chatUser = _currentChatUsers[indexOfChatUser];

    if (chatUser.unReadCount == 0) {
      return;
    }

    chatUser = chatUser.copyWith(unReadCount: 0);
    _currentChatUsers[indexOfChatUser] = chatUser;

    emit(ChatUsersLoadSuccess(UnmodifiableListView(_currentChatUsers)));
  }

  @override
  Future<void> close() {
    _messagingBlocStateStreamSubscription.cancel();
    return super.close();
  }
}
