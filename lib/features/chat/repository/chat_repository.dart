import 'dart:async';
import 'dart:math';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:doors/core/config/constants.dart';
import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/features/chat/data/chat_local_data_source/data_source/chat_local_data_source.dart';
import 'package:doors/features/chat/data/chat_local_data_source/data_source/chat_users_local_data_source.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/chat_user_info.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/media_file.dart';
import 'package:doors/features/chat/data/chat_remote_data_source/data_source/chat_remote_data_source.dart';
import 'package:doors/features/chat/data/chat_remote_data_source/data_source/chat_users_remote_data_source.dart';
import 'package:doors/features/chat/data/chat_remote_data_source/models/remote_chat_message.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class ChatRepository {
  final ChatRemoteDataSource _chatRemoteDataSource;
  final ChatUsersRemoteDataSource _chatUsersRemoteDataSource;
  final ChatLocalDataSource _chatLocalDataSource;
  final ChatUsersLocalDataSource _chatUsersLocalDataSource;

  String? currentlyOpenedChatUserId;

  late final _messagesSteamController = StreamController<LocalChatMessage>();

  ChatRepository(
    this._chatRemoteDataSource,
    this._chatUsersRemoteDataSource,
    this._chatLocalDataSource,
    this._chatUsersLocalDataSource,
  ) {
    _chatRemoteDataSource.liveQueryConnectionStatus().listen((event) async {
      if (event == LiveQueryClientEvent.CONNECTED) {
        _syncWithRemoteServer();
      }
    });
  }

  Stream<LocalChatMessage> startListingForNewMessages() async* {
    final currentUser = (await ParseUser.currentUser()) as User;

    final lastReceivedMessageDate =
        await _chatLocalDataSource.getLastReceivedMessageDate();

    _chatRemoteDataSource
        .startListingForNewMessages(lastReceivedMessageDate)
        .listen(
      (remoteMessage) async {
        final receivedMessage =
            await _addRemoteMessageToLocalDatabase(remoteMessage, currentUser);

        if (receivedMessage != null) {
          _messagesSteamController.sink.add(receivedMessage);

          if (receivedMessage.userId != currentlyOpenedChatUserId) {
            _showMessageNotification(
              receivedMessage,
              remoteMessage.sender.userId,
              remoteMessage.sender.name,
            );
          }
        }
      },
    );

    yield* _messagesSteamController.stream;
  }

  Future<void> _syncWithRemoteServer() async {
    final currentUser = (await ParseUser.currentUser()) as User;

    final lastReceivedMessageDate =
        await _chatLocalDataSource.getLastReceivedMessageDate();

    final listOfMissedRemoteMessages = await _chatRemoteDataSource
        .getMissedMessagesFromRemoteServer(lastReceivedMessageDate);

    for (var remoteMessage in listOfMissedRemoteMessages) {
      final receivedMessage =
          await _addRemoteMessageToLocalDatabase(remoteMessage, currentUser);
      if (receivedMessage != null) {
        _messagesSteamController.sink.add(receivedMessage);
      }
    }
  }

  Future<LocalChatMessage?> _addRemoteMessageToLocalDatabase(
    RemoteChatMessage remoteMessage,
    User currentUser,
  ) async {
    final receivedMessage = LocalChatMessage.receivedMessage(
      remoteMessageId: remoteMessage.messageId,
      textMessage: remoteMessage.textMessage,
      mediaFile: remoteMessage.receivedMessageType == MessageType.text.name
          ? null
          : MediaFile(mediaUrl: remoteMessage.media?.url, mediaFile: null),
      messageType: remoteMessage.receivedMessageType,
      sentDate: remoteMessage.sentDate,
      messageServerCreationDate: remoteMessage.messageCreationDate,
      senderId: remoteMessage.sender.userId,
    );

    final remoteSender = remoteMessage.sender;
    final senderUserInfo = ChatUserInfo(
      name: remoteSender.name,
      userId: remoteSender.userId,
      isCurrentUserBlockedByThisUser:
          remoteSender.getListOfBlockedUsers().contains(currentUser.userId),
      profileImage: remoteSender.profileImage == null
          ? null
          : MediaFile(
              mediaUrl: remoteSender.profileImage?.url,
              mediaFile: null,
            ),
    );

    await _chatUsersLocalDataSource.createChatUserIfNotExists(senderUserInfo);

    final isAddedSuccessfully =
        await _chatLocalDataSource.addNewMessageToChat(receivedMessage);

    return isAddedSuccessfully ? receivedMessage : null;
  }

  Future<void> dispose() async {
    await _messagesSteamController.close();
    await _chatRemoteDataSource.dispose();
  }

  Future<void> _showMessageNotification(
    LocalChatMessage chatMessage,
    String senderUserId,
    String senderName,
  ) async {
    var bodyText = '';
    final messageType = chatMessage.messageType;
    if (messageType == MessageType.text.name) {
      bodyText = chatMessage.textMessage!;
    } else {
      try {
        bodyText = MessageType.values
            .firstWhere(
              (type) => type.name == messageType,
            )
            .name;
      } catch (e) {
        bodyText = 'Unsupported Message Type';
      }
    }

    await AwesomeNotifications().createNotification(
      content: NotificationContent(
        channelKey: Constants.chatNotificationChannelKey,
        id: Random().nextInt(999999),
        summary: 'Chat',
        title: senderName,
        body: bodyText,
        groupKey: senderUserId,
        category: NotificationCategory.Message,
        displayOnBackground: true,
        notificationLayout: NotificationLayout.Messaging,
        displayOnForeground: true,
        showWhen: true,
        actionType: ActionType.Default,
      ),
    );
  }
}
