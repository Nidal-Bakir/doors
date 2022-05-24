part of 'file_downloader_bloc.dart';

@freezed
class FileDownloaderEvent with _$FileDownloaderEvent {
   const factory FileDownloaderEvent.fileDownloaded(ParseFile file) =
      FileDownloaderFileDownloaded;
  const factory FileDownloaderEvent.cachedFileLoaded(ParseFile file) =
      FileDownloaderCachedFileLoaded;
} 