import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/features/file_manager/file_saver/data/file_saver_local_data_source.dart';

class FileSaverRepository {
  final FileSaverLocalDataSource _fileSaverLocalDataSource;

  FileSaverRepository(this._fileSaverLocalDataSource);

  /// Save a file to user internal storage.
  ///
  /// Returns either: the saved [File]
  ///
  /// OR [UserException]:
  /// * [StoragePermissionsException]: in case of denied storage Permissions
  /// * [ErrorWhileSavingTheFile]: in case of error while save the file
  Future<Either<UserException, File>> savedFile(
    File fileToSave,
    AppFolder appFolder,
  ) async {
    try {
      return right(
        await _fileSaverLocalDataSource.saveFile(
          fileToSave,
          appFolder,
        ),
      );
    } on UserException catch (error) {
      return Left(error);
    }
  }
}
