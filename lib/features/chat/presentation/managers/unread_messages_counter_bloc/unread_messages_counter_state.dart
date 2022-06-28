part of 'unread_messages_counter_bloc.dart';

@freezed
class UnreadMessagesCounterState with _$UnreadMessagesCounterState {
  const factory UnreadMessagesCounterState.changeSuccess(int unreadMessageCount) =
      UnreadMessagesCounterChangeSuccess;
}
