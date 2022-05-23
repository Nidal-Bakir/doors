part of 'file_uploader_bloc.dart';

@freezed
class FileUploaderState with _$FileUploaderState {
  const factory FileUploaderState.initial() = FileUploaderInitial;

  const factory FileUploaderState.uploadInProgress(int progress, int total) =
      FileUploaderUploadInProgress;

  const factory FileUploaderState.uploadSuccess(ParseFile uploadedFile) =
      FileUploaderUploadSuccess;

  const factory FileUploaderState.uploadFailure(ServerException error) =
      FileUploaderUploadFailure;

  const factory FileUploaderState.fileSelectingFailure(UserException error) =
      FileUploaderFileSelectingFailure;
      
  const factory FileUploaderState.fileSelectingSuccess(File? selectedFile) =
      FileUploaderFileSelectingSuccess;
}
