import 'dart:io';

import 'package:doors/core/errors/user_error.dart';
import 'package:file_picker/file_picker.dart';
import 'package:permission_handler/permission_handler.dart';

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
    await _checkStoragePermission();

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

  /// Throws [StoragePermissionsException] in case of permission denied
  Future<void> _checkStoragePermission() async {
    PermissionStatus storagePermissionStatus;
    storagePermissionStatus = await Permission.storage.status;
    if (storagePermissionStatus.isDenied) {
      storagePermissionStatus = await Permission.storage.request();
      if (storagePermissionStatus.isDenied) {
        throw const DeniedStoragePermissionsException();
      }
    }
    if (storagePermissionStatus.isPermanentlyDenied) {
      throw const PermanentlyDeniedStoragePermissionsException();
    }
  }

  @override
  Future<void> clearTemporaryFiles() async {
    await FilePicker.platform.clearTemporaryFiles();
  }
}
