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
import 'package:path_provider/path_provider.dart' as path_provider;

class MediaMessageProcessManager extends MessagingProcessBase<
    ValueStreamOfEitherTuple2OrLocalMessage, LocalChatMessage> {
  final ChatLocalDataSource _chatLocalDataSource;
  final ChatRemoteDataSource _chatRemoteDataSource;
  final ChatUsersLocalDataSource _chatUsersLocalDataSource;

  final Map<int, BehaviorSubjectOfEitherTuple2OrLocalMessage>
      _runningProcesses = {};

  final _disposableProcesses = <int>{};

  MediaMessageProcessManager(
    this._chatLocalDataSource,
    this._chatRemoteDataSource,
    this._chatUsersLocalDataSource,
  );

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
      // start downloading process
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
      await _markMessageWithErrorThenDisposeProcess(message);

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
      await _markMessageWithErrorThenDisposeProcess(message);

      return;
    }
    if (!uploadMediaResponse.success || uploadMediaResponse.error != null) {
      processBehaviorSubject.sink.addError(
        ParseException.extractParseException(uploadMediaResponse.error),
      );
      await _markMessageWithErrorThenDisposeProcess(message);

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
      await _markMessageWithErrorThenDisposeProcess(message);

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

    processBehaviorSubject.add(Right(sendedMediaMessage));

    await _chatLocalDataSource.updateMessageInChat(sendedMediaMessage);

    await processBehaviorSubject.close();
    _disposableProcesses.add(message.localMessageId);
  }

  Future<void> _markMessageWithErrorThenDisposeProcess(
      LocalChatMessage message) async {
    await _markMessageWithErrorInLocalDatabase(message);
    await _runningProcesses[message.localMessageId]?.close();
    _runningProcesses.remove(message.localMessageId);
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

    _createChatFolderWithItsSubFolders(_path);

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

  @override
  Future<void> disposeAllFinishedProcesses() {
    throw UnimplementedError();
  }

  @override
  Future<void> disposeAllProcesses() {
    throw UnimplementedError();
  }
}
