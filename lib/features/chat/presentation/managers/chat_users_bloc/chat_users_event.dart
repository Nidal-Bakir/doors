part of 'chat_users_bloc.dart';

@freezed
class ChatUsersEvent with _$ChatUsersEvent {
  const factory ChatUsersEvent.loaded() = ChatUsersLoaded;

  /// #### Do not use this event directly.
  const factory ChatUsersEvent.newMessageDispatched(
      LocalChatMessage dispatchedMessage) = _ChatUsersNewMessageDispatched;

  const factory ChatUsersEvent.unreadMessagesCountRested(String userId) =
      ChatUsersUnreadMessagesCountRested;
}
