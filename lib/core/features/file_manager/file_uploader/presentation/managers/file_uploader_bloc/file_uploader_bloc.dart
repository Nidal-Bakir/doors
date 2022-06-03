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
import 'package:path/path.dart' as path;

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
          fileSelected: (event) async => _onFileSelected(event, emit));
    }, transformer: bloc_concurrency.restartable());
  }

  Future<void> _onFileUploaded(
    FileUploaderFileUploaded fileUploaderFileUploaded,
    Emitter<FileUploaderState> emit,
  ) async {
    final _validParseFileToUpload =
        _getValidParseFileToUpload(fileUploaderFileUploaded.file.file!);

    String fileSize = await getFileSize(_validParseFileToUpload.file!.path, 1);

    // TODO: rmove this line when new version of pares flutter sdk relesed
    // and fixes the dio bug not calling progressCallback
    emit(const FileUploaderUploadInProgress(1, 1));

    await _validParseFileToUpload.upload(
      progressCallback: (count, total) {
        emit(FileUploaderUploadInProgress(count, total));
      },
    ).then(
      (ParseResponse uploadResponse) {
        if (uploadResponse.success || uploadResponse.error == null) {
          emit(
            FileUploaderUploadSuccess(
              _validParseFileToUpload,
              fileSize,
            ),
          );
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

  void _onFileSelected(
    FileUploaderFileSelected event,
    Emitter<FileUploaderState> emit,
  ) {
    emit(FileUploaderFileSelectingSuccess(event.selectedFile));
  }

  /// remove all not valid chars from file name
  ParseFile _getValidParseFileToUpload(File file) {
    final fileExt = path.extension(file.path);
    final validFileNameWithoutExt = path
        .basenameWithoutExtension(file.path)
        .replaceAll(
            RegExp(
                r'[$&%!?\*\.#@_\-\/\\\^()=+;\{\}\[\]:"0-9©®™✓°π√•|`~×÷¶∆¥€¢£<>]'),
            '');
    return ParseFile(file, name: validFileNameWithoutExt + fileExt);
  }
}
