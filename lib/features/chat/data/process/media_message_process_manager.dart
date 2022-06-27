import 'dart:collection';
import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/features/chat/data/chat_local_data_source/data_source/chat_local_data_source.dart';
import 'package:doors/features/chat/data/chat_local_data_source/data_source/chat_users_local_data_source.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/media_file.dart';
import 'package:doors/features/chat/data/chat_remote_data_source/data_source/chat_remote_data_source.dart';
import 'package:doors/features/chat/data/chat_remote_data_source/models/remote_chat_message.dart';
import 'package:doors/features/chat/data/process/messaging_process_base.dart';
import 'package:doors/features/chat/util/chat_typedef.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as path_provider;

class MediaMessageProcessManager extends MessagingProcessBase<
    ValueStreamOfEitherTuple2OrLocalMessage, LocalChatMessage> {
  final ChatLocalDataSource _chatLocalDataSource;
  final ChatRemoteDataSource _chatRemoteDataSource;
  final ChatUsersLocalDataSource _chatUsersLocalDataSource;

  final Map<int, BehaviorSubjectOfEitherTuple2OrLocalMessage>
      _runningProcesses = {};

  final _disposableProcesses = <int>{};
  final _pendingPrecesses = ListQueue<LocalChatMessage>();

  MediaMessageProcessManager(
    this._chatLocalDataSource,
    this._chatRemoteDataSource,
    this._chatUsersLocalDataSource,
  ) {
    _chatRemoteDataSource.liveQueryConnectionStatus().listen((event) {
      if (event == LiveQueryClientEvent.CONNECTED) {
        _restartAllPendingProcesses();
      }
    });
  }

  @override
  ValueStreamOfEitherTuple2OrLocalMessage startOrAttachToRunningProcess(
      LocalChatMessage message) {
    return _runningProcesses
        .putIfAbsent(
          message.localMessageId,
          () => _createBehaviorSubjectThenStartProcess(message),
        )
        .stream;
  }

  BehaviorSubjectOfEitherTuple2OrLocalMessage
      _createBehaviorSubjectThenStartProcess(LocalChatMessage message) {
    final processBehaviorSubject =
        BehaviorSubjectOfEitherTuple2OrLocalMessage();

    if (message.isSendedByCurrentUser) {
      _startSending(processBehaviorSubject, message);
    } else {
      // received media message start downloading
      _startDownloading(processBehaviorSubject, message);
    }

    return processBehaviorSubject;
  }

  Future<void> _startSending(
    BehaviorSubjectOfEitherTuple2OrLocalMessage processBehaviorSubject,
    LocalChatMessage message,
  ) async {
    await _chatLocalDataSource.addNewMessageToChat(message);

    final File savedFile;
    try {
      savedFile = await _saveMediaFileToAppDocumentsDirectory(
        message.mediaFile!.file!,
      );
    } catch (error) {
      processBehaviorSubject.sink.addError(
        ErrorWhileSavingTheFile(
          'can not save the media file to app documents directory \n Error:' +
              error.toString(),
        ),
      );
      await _markMessageWithErrorThenDisposeProcess(message, error);

      return;
    }

    message = message.copyWith(
      mediaFile: MediaFile(
        file: savedFile,
        mediaUrl: null,
      ),
    );
    await _chatLocalDataSource.updateMessageInChat(message);

    final currentUser = (await ParseUser.currentUser()) as User;
    final remoteMediaChatMessage = RemoteChatMessage()
      ..messageType = MessageType.image
      ..sender = currentUser
      ..receiver = (User(null, null, null)..objectId = message.userId)
      ..sentDate = message.sentDate
      ..media = ParseFile(message.mediaFile!.file);

    final ParseResponse uploadMediaResponse;
    try {
      uploadMediaResponse = await remoteMediaChatMessage.media!.upload(
          progressCallback: (count, total) {
        processBehaviorSubject.sink.add(Left(Tuple2(count, total)));
      });
    } catch (error) {
      processBehaviorSubject.sink.addError(
        ErrorWhileSavingTheFile(
          'can not save the media file to app documents directory \n Error:' +
              error.toString(),
        ),
      );
      await _markMessageWithErrorThenDisposeProcess(message, error);

      return;
    }
    if (!uploadMediaResponse.success || uploadMediaResponse.error != null) {
      processBehaviorSubject.sink.addError(
        ParseException.extractParseException(uploadMediaResponse.error),
      );
      await _markMessageWithErrorThenDisposeProcess(
        message,
        uploadMediaResponse.error!,
      );

      return;
    }

    final RemoteChatMessage remoteMediaChatMessageResponse;
    try {
      remoteMediaChatMessageResponse =
          await _chatRemoteDataSource.sendNewMessage(
        remoteMediaChatMessage,
      );
    } on ServerException catch (error) {
      if (error is ErrorTheCurrentUserWasBlockedByTheOtherUser) {
        await _chatUsersLocalDataSource
            .markTheCurrentUserAsBlockedByTheOtherUser(
          message.userId,
        );
      }

      processBehaviorSubject.sink.addError(error);
      await _markMessageWithErrorThenDisposeProcess(message, error);

      return;
    }

    final sendedMediaMessage = message.copyWith(
      messageStatues: MessageStatues.sent,
      remoteMessageId: remoteMediaChatMessageResponse.messageId,
      messageServerCreationDate:
          remoteMediaChatMessageResponse.messageCreationDateOnServer,
      mediaFile: message.mediaFile!.copyWith(
        mediaUrl: remoteMediaChatMessageResponse.media!.url!,
      ),
    );

    await _chatLocalDataSource.updateMessageInChat(sendedMediaMessage);

    processBehaviorSubject.add(Right(sendedMediaMessage));

    await processBehaviorSubject.close();
    _disposableProcesses.add(message.localMessageId);
  }

  Future<void> _startDownloading(
    BehaviorSubjectOfEitherTuple2OrLocalMessage processBehaviorSubject,
    LocalChatMessage message,
  ) async {
    final mediaUrl = message.mediaFile!.mediaUrl!;
    final mediaFileToDownload = ParseFile(
      null,
      url: mediaUrl,
      name: path.basename(mediaUrl),
    );

    final ParseFile downloadedFile;
    try {
      downloadedFile =
          await mediaFileToDownload.download(progressCallback: (count, total) {
        processBehaviorSubject.sink.add(Left(Tuple2(count, total)));
      });
    } catch (error) {
      processBehaviorSubject.sink.addError(
        ErrorWhileSavingTheFile(
          'can not save the media file to app documents directory \n Error:' +
              error.toString(),
        ),
      );
      await _markMessageWithErrorThenDisposeProcess(message, error);

      return;
    }

    final File savedFile;
    try {
      savedFile = await _saveMediaFileToAppDocumentsDirectory(
        downloadedFile.file!,
      );
    } catch (error) {
      processBehaviorSubject.sink.addError(
        ErrorWhileSavingTheFile(
          'can not save the media file to app documents directory \n Error:' +
              error.toString(),
        ),
      );
      await _markMessageWithErrorThenDisposeProcess(message, error);

      return;
    }

    final downloadedMediaMessage = message.copyWith(
      mediaFile: MediaFile(mediaUrl: null, file: savedFile),
      messageStatues: MessageStatues.received,
      receivedMessageDeletionFromServerStatues:
          ReceivedMessageDeletionFromServerStatues.needToBeDeletedFromServer,
    );

    await _chatLocalDataSource.updateMessageInChat(downloadedMediaMessage);

    processBehaviorSubject.add(Right(downloadedMediaMessage));

    await processBehaviorSubject.close();
    _disposableProcesses.add(message.localMessageId);

    await _deleteReceivedDownloadedMediaMessageFromServer(
      downloadedMediaMessage.remoteMessageId!,
    );
  }

  Future<void> _deleteReceivedDownloadedMediaMessageFromServer(
    String remoteMessageId,
  ) async {
    try {
      await _chatRemoteDataSource.deleteMessageFromServer(
        remoteMessageId,
        false,
      );
    } catch (error) {
      log(
        '''could not delete received media message from server,
        the message still marked as needToBeDeletedFromServer in local database... ''',
        error: error,
      );

      return;
    }

    await _chatLocalDataSource
        .markReceivedChatMessageWithDeletionFromServerStatues(
      remoteMessageId,
      ReceivedMessageDeletionFromServerStatues.deleted,
    );
  }

  Future<void> _markMessageWithErrorThenDisposeProcess(
    LocalChatMessage message,
    Object error,
  ) async {
    await _markMessageWithErrorInLocalDatabase(message);
    await _runningProcesses[message.localMessageId]!.close();
    _runningProcesses.remove(message.localMessageId);

    if (error is NoConnectionException) {
      // Add the process(message) to pending precesses so when the connection
      // returns the process will restart and try to resend the message.
      _pendingPrecesses.addLast(message);
    }
  }

  Future<void> _markMessageWithErrorInLocalDatabase(
    LocalChatMessage message,
  ) async {
    await _chatLocalDataSource.updateMessageInChat(
      message.copyWith(messageStatues: MessageStatues.error),
    );
  }

  Future<File> _saveMediaFileToAppDocumentsDirectory(File file) async {
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

  void _restartAllPendingProcesses() {
    for (int i = 0; i < _pendingPrecesses.length; i++) {
      startOrAttachToRunningProcess(_pendingPrecesses.removeFirst());
    }
  }

  @override
  Future<void> disposeAllFinishedProcesses() async {
    for (var processId in _disposableProcesses) {
      await _runningProcesses[processId]?.close();
      _runningProcesses.remove(processId);
    }
    _disposableProcesses.clear();
  }

  @override
  Future<void> disposeAllProcesses() async {
    for (var process in _runningProcesses.values) {
      await process.close();
    }
    _pendingPrecesses.clear();
    _runningProcesses.clear();
    _disposableProcesses.clear();
  }
}
