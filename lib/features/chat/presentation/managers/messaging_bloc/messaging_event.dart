part of 'messaging_bloc.dart';

@freezed
class MessagingEvent with _$MessagingEvent {
  const factory MessagingEvent.textMessageSended({
    required String messageText,
    required ChatUserInfo receiverUser,
  }) = MessagingTextMessageSended;

  const factory MessagingEvent.mediaMessageSended({
    required File mediaFile,
    required MessageType mediaMessageType,
    required ChatUserInfo receiverUser,
  }) = MessagingMediaMessageSended;

  const factory MessagingEvent.newMessageReceived(LocalChatMessage message) =
      MessagingNewMessageReceived;
}
