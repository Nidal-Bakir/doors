part of 'unread_messages_counter_bloc.dart';

@freezed
class UnreadMessagesCounterEvent with _$UnreadMessagesCounterEvent {
  const factory UnreadMessagesCounterEvent.changed(int unreadMessageCount) =
      _UnreadMessagesCounterChanged;
}
