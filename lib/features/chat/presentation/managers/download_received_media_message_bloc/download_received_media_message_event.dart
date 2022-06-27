part of 'download_received_media_message_bloc.dart';

@freezed
class DownloadReceivedMediaMessageEvent
    with _$DownloadReceivedMediaMessageEvent {
  const factory DownloadReceivedMediaMessageEvent.downloaded() =
      DownloadReceivedMediaMessageDownloaded;
}
