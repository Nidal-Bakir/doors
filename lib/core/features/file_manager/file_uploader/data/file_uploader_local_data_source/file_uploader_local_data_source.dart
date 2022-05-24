import 'dart:io';

import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/utils/permission_checker_service.dart';
import 'package:file_picker/file_picker.dart';

abstract class FileUploaderLocalDataSource {
  /// Open native file manager to select a file.
  ///
  /// Returns [File] if the user select a file or null if aborted.
  ///
  /// Throws [UserException]:
  /// * [StoragePermissionsException]: in case of denied storage Permissions
  /// * [UnknownError]: error caught from file_picker package.
  Future<File?> openFileManagerForSelection({
    List<String>? allowedExtensions,
    FileType? fileType = FileType.any,
  });

  Future<void> clearTemporaryFiles();
}

class FileUploaderLocalDataSourceImpl extends FileUploaderLocalDataSource {
  @override
  Future<File?> openFileManagerForSelection({
    List<String>? allowedExtensions,
    FileType? fileType = FileType.any,
  }) async {
    await PermissionCheckerService.checkStoragePermission();

    FilePickerResult? selectedFile;
    try {
      selectedFile = await FilePicker.platform.pickFiles(
        type: fileType ?? FileType.any,
        allowedExtensions: allowedExtensions,
      );
    } catch (error) {
      throw UnknownError(
        'error while picking a file from file manager' ' \nError: ' +
            error.toString(),
      );
    }

    if (selectedFile != null) {
      return File(selectedFile.files.single.path!);
    }

    return null;
  }



  @override
  Future<void> clearTemporaryFiles() async {
    await FilePicker.platform.clearTemporaryFiles();
  }
}
