part of 'messaging_bloc.dart';

@freezed
class MessagingEvent with _$MessagingEvent {
  const factory MessagingEvent.newMessageSended(LocalChatMessage message) =
      MessagingNewMessageSended;

  const factory MessagingEvent.newMessageReceived(LocalChatMessage message) =
      MessagingNewMessageReceived;
}
