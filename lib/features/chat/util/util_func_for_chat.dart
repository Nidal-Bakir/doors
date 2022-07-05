import 'dart:developer';
import 'dart:io';

import 'package:doors/core/errors/user_error.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/message_meta_data.dart';
import 'package:intl/intl.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as path_provider;

String getMessageSendTime(DateTime sendDate) {
  return DateFormat('k:m a').format(sendDate.toLocal());
}

Future<File?> saveThumbnailImage(String thumbnailUrl) async {
  final thumbnailImageToDownload = ParseFile(
    null,
    url: thumbnailUrl,
    name: path.basename(thumbnailUrl),
  );
  final ParseFile downloadedFile;
  try {
    downloadedFile = await thumbnailImageToDownload.download();
  } catch (error) {
    log('can not download the thumbnail image for image message \n Error: ' +
        error.toString());
    return null;
  }

  try {
    return await saveMediaFileToAppDocumentsDirectory(downloadedFile.file!);
  } catch (error) {
    log('can not save the thumbnail image for image message \n Error: ' +
        error.toString());
    return null;
  }
}

Future<File> saveMediaFileToAppDocumentsDirectory(File file) async {
  var _path = '';
  _path = (await path_provider.getApplicationDocumentsDirectory()).path;
  _path += '/chat/media';

  await _createChatFolderWithItsSubFolders(_path);

  _path += '/' + path.basename(file.path);

  var savedFile = await File(_path).writeAsBytes(
    await file.readAsBytes(),
  );

  if (!(await savedFile.exists())) {
    throw const ErrorWhileSavingTheFile(
        'file dose not exists when saving media message');
  }

  return savedFile;
}

Future<void> _createChatFolderWithItsSubFolders(String _path) async {
  try {
    await Directory.fromUri(Uri.parse(_path)).create(recursive: true);
  } catch (e) {
    throw ErrorWhileSavingTheFile(
        'can not create app directory' '\n Error: ' + e.toString());
  }
}

double imageAspectRatio(ImageMessageMetaData metaData) {
  return metaData.imageWidth / metaData.imageHight;
}
