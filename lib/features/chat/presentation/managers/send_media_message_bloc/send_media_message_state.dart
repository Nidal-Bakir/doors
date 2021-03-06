part of 'send_media_message_bloc.dart';

@freezed
class SendMediaMessageState with _$SendMediaMessageState {
  const factory SendMediaMessageState.initial(LocalChatMessage mediaMessage) =
      SendMediaMessageInitial;

  const factory SendMediaMessageState.inProgress() = SendMediaMessageInProgress;

  const factory SendMediaMessageState.uploadInProgress(
      int progress,int total) = SendMediaMessageUploadInProgress;

  const factory SendMediaMessageState.sendSuccess(
      LocalChatMessage mediaMessage) = SendMediaMessageSendSuccess;

  const factory SendMediaMessageState.sendFailure(ExceptionBase error) =
      SendMediaMessageSendFailure;
}
