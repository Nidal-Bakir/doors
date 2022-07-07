part of 'download_received_media_message_bloc.dart';

@freezed
class DownloadReceivedMediaMessageState
    with _$DownloadReceivedMediaMessageState {
  const factory DownloadReceivedMediaMessageState.initial(
      LocalChatMessage mediaMessage) = DownloadReceivedMediaMessageInitial;

  const factory DownloadReceivedMediaMessageState.inProgress() =
      DownloadReceivedMediaMessageInProgress;

  const factory DownloadReceivedMediaMessageState.downloadInProgress(
    int progress,
    int total,
  ) = DownloadReceivedMediaMessageDownloadInProgress;

  const factory DownloadReceivedMediaMessageState.downloadSuccess(
          LocalChatMessage mediaMessage) =
      DownloadReceivedMediaMessageDownloadSuccess;

  const factory DownloadReceivedMediaMessageState.downloadFailure(
      ExceptionBase error) = DownloadReceivedMediaMessageDownloadFailure;
}
