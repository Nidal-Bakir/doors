part of 'send_text_message_bloc.dart';

@freezed
class SendTextMessageEvent with _$SendTextMessageEvent {
  const factory SendTextMessageEvent.messageSended() =
      SendTextMessageMessageSended;
}
