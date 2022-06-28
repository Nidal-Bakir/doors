part of 'chat_users_bloc.dart';

@freezed
class ChatUsersState with _$ChatUsersState {
  const factory ChatUsersState.inProgress() = ChatUsersInProgress;

  const factory ChatUsersState.loadSuccess(
    UnmodifiableListView<ChatUserInfo> chatUsers,
  ) = ChatUsersLoadSuccess;

  const factory ChatUsersState.orderUpdateSuccess(
    int oldIndexOrder,
    ChatUserInfo chatUserInfo,
  ) = ChatUsersOrderUpdateSuccess;

  const factory ChatUsersState.newChatUserAddedSuccess(
    ChatUserInfo newChatUserInfo,
  ) = ChatUsersNewChatUserAddedSuccess;
}
