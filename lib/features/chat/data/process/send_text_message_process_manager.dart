import 'dart:async';
import 'dart:collection';

import 'package:dartz/dartz.dart';
import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/features/chat/data/chat_local_data_source/data_source/chat_local_data_source.dart';
import 'package:doors/features/chat/data/chat_local_data_source/data_source/chat_users_local_data_source.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:doors/features/chat/data/chat_remote_data_source/data_source/chat_remote_data_source.dart';
import 'package:doors/features/chat/data/chat_remote_data_source/models/remote_chat_message.dart';
import 'package:doors/features/chat/data/process/messaging_process_base.dart';
import 'package:doors/features/chat/util/chat_typedef.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class SendTextMessageProcessManager extends MessagingProcessBase<
    Future<EitherServerErrorOrLocalMessage>, LocalChatMessage> {
  final ChatLocalDataSource _chatLocalDataSource;
  final ChatRemoteDataSource _chatRemoteDataSource;
  final ChatUsersLocalDataSource _chatUsersLocalDataSource;

  final Map<int, Future<EitherServerErrorOrLocalMessage>> _sendingProcesses =
      {};

  final _disposableProcesses = <int>{};

  final _pendingPrecesses = ListQueue<LocalChatMessage>();

  SendTextMessageProcessManager(
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
  Future<EitherServerErrorOrLocalMessage> startOrAttachToRunningProcess(
    LocalChatMessage message,
  ) {
    return _sendingProcesses.putIfAbsent(
      message.localMessageId,
      () => _startSendingProcess(message),
    );
  }

  Future<EitherServerErrorOrLocalMessage> _startSendingProcess(
      LocalChatMessage message) async {
    await _chatLocalDataSource.addNewMessageToChat(message);

    final currentUser = (await ParseUser.currentUser()) as User;

    final remoteChatMessage = RemoteChatMessage()
      ..textMessage = message.textMessage
      ..messageType = MessageType.text
      ..receiver = (User(null, null, null)..objectId = message.userId)
      ..sender = currentUser
      ..metaData = message.messageMetaData.toJson()
      ..sentDate = message.sentDate;

    final RemoteChatMessage remoteChatMessageResponse;
    try {
      remoteChatMessageResponse =
          await _chatRemoteDataSource.sendNewMessage(remoteChatMessage);
    } on ServerException catch (error) {
      // Remove the current process(message) in case of error,
      // So the next attempt to send the message will start a new process.
      _sendingProcesses.remove(message.localMessageId);

      if (error is ErrorTheCurrentUserWasBlockedByTheOtherUser) {
        await _chatUsersLocalDataSource
            .markTheCurrentUserAsBlockedByTheOtherUser(
          message.userId,
        );
      }

      if (error is NoConnectionException) {
        // Add the process(message) to pending precesses so when the connection
        // returns the process will restart and try to resend the message.
        _pendingPrecesses.addLast(message);
      }

      await _chatLocalDataSource.updateMessageInChat(
          message.copyWith(messageStatues: MessageStatues.error));
      return Left(error);
    }

    final sendedTextMessage = message.copyWith(
      messageStatues: MessageStatues.sent,
      remoteMessageId: remoteChatMessageResponse.messageId,
      messageServerCreationDate:
          remoteChatMessageResponse.messageCreationDateOnServer,
    );

    await _chatLocalDataSource.updateMessageInChat(sendedTextMessage);

    _disposableProcesses.add(message.localMessageId);

    return Right(sendedTextMessage);
  }

  void _restartAllPendingProcesses() {
    for (int i = 0; i < _pendingPrecesses.length; i++) {
      startOrAttachToRunningProcess(_pendingPrecesses.removeFirst());
    }
  }

  @override
  Future<void> disposeAllFinishedProcesses() async {
    for (var processId in _disposableProcesses) {
      _sendingProcesses.remove(processId);
    }
    _disposableProcesses.clear();
  }

  @override
  Future<void> disposeAllProcesses() async {
    _sendingProcesses.clear();
    _pendingPrecesses.clear();
    _disposableProcesses.clear();
  }
}
