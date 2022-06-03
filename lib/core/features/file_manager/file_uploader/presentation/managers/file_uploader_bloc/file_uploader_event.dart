part of 'file_uploader_bloc.dart';

@freezed
class FileUploaderEvent with _$FileUploaderEvent {
  const factory FileUploaderEvent.fileUploaded(ParseFile file) =
      FileUploaderFileUploaded;

  const factory FileUploaderEvent.selectedFileCanceled(File file) =
      FileUploaderSelectedFileCanceled;

  const factory FileUploaderEvent.fileSelected(File selectedFile) =
      FileUploaderFileSelected;

  const factory FileUploaderEvent.fileManagerOpened(
          List<String> allowedExtensions, FileType fileType) =
      FileUploaderFileManagerOpened;
}
