import 'dart:io';
import 'package:doors/core/errors/user_error.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:path/path.dart' as path;

import 'package:doors/core/utils/permission_checker_service.dart';

abstract class FileSaverLocalDataSource {
  /// Save a file to user internal storage.
  ///
  /// Returns the saved file
  ///
  /// Throws [UserException]:
  /// * [StoragePermissionsException]: in case of denied storage Permissions
  /// * [ErrorWhileSavingTheFile]: in case of error while save the file
  Future<File> savedFile(File fileToSave);
}

class FileSaverLocalDataSourceImpl extends FileSaverLocalDataSource {
  @override
  Future<File> savedFile(File fileToSave) async {
    await PermissionCheckerService.checkStoragePermission();

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
      _path = '/storage/emulated/0/doors app';
    }

    _path = _path + '/job applications';

    try {
      await Directory.fromUri(Uri.parse(_path)).create(recursive: true);
    } catch (e) {
      throw ErrorWhileSavingTheFile(
          'can not create app directory' '\n Error: ' + e.toString());
    }
 
    _path = _path + '/' + path.basename(fileToSave.path);

    var savedFile =
        await File(_path).writeAsBytes(await fileToSave.readAsBytes());

    if (!(await savedFile.exists())) {
      throw const ErrorWhileSavingTheFile('file dose not exists');
    }

    return savedFile;
  }
}
