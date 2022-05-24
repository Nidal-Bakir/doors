part of 'file_downloader_bloc.dart';

@freezed
class FileDownloaderState with _$FileDownloaderState {
const factory FileDownloaderState.initial() = FileDownloaderInitial;

  const factory FileDownloaderState.downloadInProgress(int progress, int total) =
     FileDownloaderDownloadInProgress;

  const factory FileDownloaderState.downloadSuccess(ParseFile downloadFile) =
      FileDownloaderDownloadSuccess;

  const factory FileDownloaderState.downloadFailure(ServerException error) =
     FileDownloaderDownloadFailure;
}
