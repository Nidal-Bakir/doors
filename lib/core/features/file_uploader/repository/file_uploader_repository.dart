import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/features/file_uploader/data/file_uploader_local_data_source/file_uploader_local_data_source.dart';
import 'package:file_picker/file_picker.dart';

class FileUploaderRepository {
  final FileUploaderLocalDataSource _fileUploaderLocalDataSource;

  FileUploaderRepository(this._fileUploaderLocalDataSource);

  Future<Either<UserException, File?>> openFileManagerForSelection({
    List<String>? allowedExtensions,
    FileType? fileType,
  }) async {
    try {
      return Right(
        await _fileUploaderLocalDataSource.openFileManagerForSelection(
          allowedExtensions: allowedExtensions,
          fileType: fileType,
        ),
      );
    } on UserException catch (error) {
      return Left(error);
    }
  }

  Future<void> clearTemporaryFiles() async {
    await _fileUploaderLocalDataSource.clearTemporaryFiles();
  }
}
