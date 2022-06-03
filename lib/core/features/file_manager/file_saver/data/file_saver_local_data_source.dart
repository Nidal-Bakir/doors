import 'dart:io';
import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:path/path.dart' as path;

import 'package:doors/core/utils/permission_checker_service.dart';

abstract class FileSaverLocalDataSource {
  /// Save a file to user internal storage.
  ///
  /// [appFolder] folder name to save the file on.
  ///
  /// Returns the saved file
  ///
  /// Throws [UserException]:
  /// * [StoragePermissionsException]: in case of denied storage Permissions
  /// * [ErrorWhileSavingTheFile]: in case of error while save the file
  Future<File> saveFile(File fileToSave, AppFolder appFolder);
}

class FileSaverLocalDataSourceImpl extends FileSaverLocalDataSource {
  @override
  Future<File> saveFile(File fileToSave, AppFolder appFolder) async {
    await PermissionCheckerService.checkStoragePermission();

    String _path = '';

    _path = await _getAppDir();

    _path += '/' + appFolder.folderName;

    await _createAppFolderWithItsSubFolders(_path);

    final uniqueFileName = await getNonDuplicatedFileNameInDir(
      _path + '/' + path.basename(fileToSave.path),
    );

    _path += '/' + uniqueFileName;

    var savedFile =
        await File(_path).writeAsBytes(await fileToSave.readAsBytes());

    if (!(await savedFile.exists())) {
      throw const ErrorWhileSavingTheFile('file dose not exists');
    }

    return savedFile;
  }

  Future<void> _createAppFolderWithItsSubFolders(String _path) async {
    try {
      await Directory.fromUri(Uri.parse(_path)).create(recursive: true);
    } catch (e) {
      throw ErrorWhileSavingTheFile(
          'can not create app directory' '\n Error: ' + e.toString());
    }
  }

  Future<String> _getAppDir() async {
    String _path = '';
    if (Platform.isIOS) {
      try {
        _path = (await path_provider.getApplicationDocumentsDirectory()).path;
      } catch (e) {
        throw ErrorWhileSavingTheFile(
            'can not get application documents directory' '\n Error: ' +
                e.toString());
      }
    } else if (Platform.isAndroid) {
      _path = '/storage/emulated/0';
    }

    _path += '/doors app';

    return _path;
  }
}
