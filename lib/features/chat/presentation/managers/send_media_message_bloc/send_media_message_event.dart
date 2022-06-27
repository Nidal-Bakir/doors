part of 'send_media_message_bloc.dart';

@freezed
class SendMediaMessageEvent with _$SendMediaMessageEvent {
  const factory SendMediaMessageEvent.messageSended() =
      SendMediaMessageMessageSended;
}
