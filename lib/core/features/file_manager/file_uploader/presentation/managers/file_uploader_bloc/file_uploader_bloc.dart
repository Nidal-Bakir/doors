import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/features/file_manager/file_uploader/repository/file_uploader_repository.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;

part 'file_uploader_event.dart';
part 'file_uploader_state.dart';
part 'file_uploader_bloc.freezed.dart';

class FileUploaderBloc extends Bloc<FileUploaderEvent, FileUploaderState> {
  final FileUploaderRepository _fileUploaderRepository;
  FileUploaderBloc(this._fileUploaderRepository)
      : super(const FileUploaderInitial()) {
    on<FileUploaderEvent>((event, emit) async {
      await event.map(
        fileUploaded: (fileUploaderFileUploaded) async =>
            await _onFileUploaded(fileUploaderFileUploaded, emit),
        fileManagerOpened: (fileManagerOpened) async =>
            await _onFileManagerOpened(fileManagerOpened, emit),
        selectedFileCanceled: (selectedFileCanceled) async =>
            await _onSelectedFileCanceled(selectedFileCanceled, emit),
      );
    }, transformer: bloc_concurrency.restartable());
  }

  Future<void> _onFileUploaded(
    FileUploaderFileUploaded fileUploaderFileUploaded,
    Emitter<FileUploaderState> emit,
  ) async {
    String fileSize = '';
    if (fileUploaderFileUploaded.file.file != null) {
      fileSize = await getFileSize(fileUploaderFileUploaded.file.file!.path, 1);
    }
    // TODO: rmove this line when new version of pares flutter sdk relesed
    // and fixes the dio bug not calling progressCallback
    emit(const FileUploaderUploadInProgress(1, 1));
    await fileUploaderFileUploaded.file.upload(
      progressCallback: (count, total) {
        emit(FileUploaderUploadInProgress(count, total));
      },
    ).then(
      (ParseResponse uploadResponse) {
        if (uploadResponse.success || uploadResponse.error == null) {
          emit(FileUploaderUploadSuccess(
              fileUploaderFileUploaded.file, fileSize));
        } else {
          emit(
            FileUploaderUploadFailure(
              ParseException.extractParseException(
                uploadResponse.error,
              ),
            ),
          );
        }
      },
      onError: (error) {
        emit(
          FileUploaderUploadFailure(
            NoConnectionException(
              'can not upload the file to parse server.'
                      '\n Error: ' +
                  error.toString(),
            ),
          ),
        );
      },
    );
  }

  Future<void> _onFileManagerOpened(
      FileUploaderFileManagerOpened fileManagerOpened,
      Emitter<FileUploaderState> emit) async {
    final selectedFileResult =
        await _fileUploaderRepository.openFileManagerForSelection(
      allowedExtensions: fileManagerOpened.allowedExtensions,
      fileType: fileManagerOpened.fileType,
    );
    selectedFileResult.fold(
      (error) => emit(FileUploaderFileSelectingFailure(error)),
      (selectedFile) => emit(FileUploaderFileSelectingSuccess(selectedFile)),
    );
  }

  Future<void> _onSelectedFileCanceled(
      FileUploaderSelectedFileCanceled selectedFileCanceled,
      Emitter<FileUploaderState> emit) async {
    _fileUploaderRepository.clearTemporaryFiles();
    emit(const FileUploaderInitial());
  }
}
