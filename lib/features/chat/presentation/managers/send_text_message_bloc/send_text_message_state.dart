part of 'send_text_message_bloc.dart';

@freezed
class SendTextMessageState with _$SendTextMessageState {
  const factory SendTextMessageState.initial(LocalChatMessage textMessage) =
      SendTextMessageInitial;

  const factory SendTextMessageState.inProgress() = SendTextMessageInProgress;

  const factory SendTextMessageState.sendSuccess(LocalChatMessage textMessage) =
      SendTextMessageSendSuccess;

  const factory SendTextMessageState.sendFailure(ServerException error) =
      SendTextMessageSendFailure;
}
