import 'dart:async';
import 'dart:developer';
import 'dart:math' show Random;

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:collection/collection.dart';
import 'package:doors/core/config/constants.dart';
import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/features/chat/data/chat_local_data_source/data_source/chat_local_data_source.dart';
import 'package:doors/features/chat/data/chat_local_data_source/data_source/chat_users_local_data_source.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/chat_user_info.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:doors/features/chat/data/chat_remote_data_source/data_source/chat_remote_data_source.dart';
import 'package:doors/features/chat/data/chat_remote_data_source/data_source/chat_users_remote_data_source.dart';
import 'package:doors/features/chat/data/chat_remote_data_source/models/remote_chat_message.dart';
import 'package:doors/features/chat/data/process/messaging_process_base.dart';
import 'package:doors/features/chat/util/chat_typedef.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:rxdart/subjects.dart';

class ChatRepository {
  final ChatRemoteDataSource _chatRemoteDataSource;
  final ChatUsersRemoteDataSource _chatUsersRemoteDataSource;
  final ChatLocalDataSource _chatLocalDataSource;
  final ChatUsersLocalDataSource _chatUsersLocalDataSource;

  final MessagingProcessBase<Future<EitherServerErrorOrLocalMessage>,
      LocalChatMessage> _sendTextMessageProcessManager;

  final MessagingProcessBase<ValueStreamOfEitherTuple2OrLocalMessage,
      LocalChatMessage> _mediaMessageProcessManager;

  late final _connectionStatusBehaviorSubject =
      BehaviorSubject<LiveQueryClientEvent>();
  late final StreamSubscription _connectionStatusStreamSubscription;

  late final _overallUnReadMessagesCountBehaviorSubject =
      BehaviorSubject<int>.seeded(0);

  ChatRepository(
    this._chatRemoteDataSource,
    this._chatUsersRemoteDataSource,
    this._chatLocalDataSource,
    this._chatUsersLocalDataSource,
    this._sendTextMessageProcessManager,
    this._mediaMessageProcessManager,
  ) {
    _deleteAllMessagesMarkedAsNeedsToBeDeletedFromServer();
    pullUpdatedChatUsersInfoFromRemoteServer();

    _chatLocalDataSource.getCountOfUnreadMessages().then((unreadCount) {
      _overallUnReadMessagesCountBehaviorSubject.add(unreadCount);
    });

    _connectionStatusStreamSubscription =
        _chatRemoteDataSource.liveQueryConnectionStatus().listen((event) async {
      _connectionStatusBehaviorSubject.add(event);

      if (event == LiveQueryClientEvent.CONNECTED) {
        _pullMissedMessagesFromRemoteServer();
      }
    });
  }

  late final _receivedMessagesSteamController =
      StreamController<LocalChatMessage>();

  StreamSubscription? _receivedMessagesFromServerStreamSubscription;

  String? _currentlyOpenedChatUserId;
  String? get currentlyOpenedChatUserId => _currentlyOpenedChatUserId;
  set currentlyOpenedChatUserId(String? userId) {
    _currentlyOpenedChatUserId = userId;
    if (userId == null) {
      _mediaMessageProcessManager.disposeAllFinishedProcesses();
      _sendTextMessageProcessManager.disposeAllFinishedProcesses();
    }
  }

  Stream<int> get overallUnReadMessagesCountStream =>
      _overallUnReadMessagesCountBehaviorSubject.stream;

  void _incrementOverallUnReadMessagesCount([int incrementBy = 1]) {
    final currentValue = _overallUnReadMessagesCountBehaviorSubject.value;
    _overallUnReadMessagesCountBehaviorSubject.add(currentValue + incrementBy);
  }

  void _decrementOverallUnReadMessagesCount(int decrementBy) {
    final currentValue = _overallUnReadMessagesCountBehaviorSubject.value;
    _overallUnReadMessagesCountBehaviorSubject.add(currentValue - decrementBy);
  }

  Stream<LiveQueryClientEvent> connectionStatusSteam() =>
      _connectionStatusBehaviorSubject.stream;

  Future<UnmodifiableListView<LocalChatMessage>> getChatMessages(
    String userId,
    int amountToSkip,
  ) {
    return _chatLocalDataSource.getChatWithUser(userId, amountToSkip);
  }

  Future<UnmodifiableListView<ChatUserInfo>>
      getUsersWithLatestMessageAndUnreadCounts() {
    return _chatUsersLocalDataSource.getUsersWithLatestMessageAndUnreadCounts();
  }

  Future<void> markChatAsRead(String userId) async {
    final numberOfMessagesMarkedAsRead =
        await _chatLocalDataSource.markChatAsRead(userId);

    _decrementOverallUnReadMessagesCount(numberOfMessagesMarkedAsRead);
  }

  Future<EitherServerErrorOrLocalMessage> sendTextMessage(
    LocalChatMessage textMessage,
  ) {
    return _sendTextMessageProcessManager
        .startOrAttachToRunningProcess(textMessage);
  }

  ValueStreamOfEitherTuple2OrLocalMessage sendMediaMessage(
    LocalChatMessage mediaMessage,
  ) {
    return _mediaMessageProcessManager
        .startOrAttachToRunningProcess(mediaMessage);
  }

  ValueStreamOfEitherTuple2OrLocalMessage downloadReceivedMediaMessage(
    LocalChatMessage receivedMediaMessage,
  ) {
    return _mediaMessageProcessManager
        .startOrAttachToRunningProcess(receivedMediaMessage);
  }

  Future<ChatUserInfo> createChatUserIfNotExistsOrUpdate(
    User remoteChatUser,
  ) async {
    final currentUser = (await ParseUser.currentUser()) as User;

    final chatUserInfo = ChatUserInfo.buildFromRemoteUser(
      remoteChatUser,
      currentUser.userId,
    );

    await _chatUsersLocalDataSource
        .createChatUserIfNotExistsOrUpdate(chatUserInfo);

    return chatUserInfo;
  }

  Future<ChatUserInfo> getChatUserInfo(String userId) {
    return _chatUsersLocalDataSource.getChatUserInfo(userId);
  }

  Stream<LocalChatMessage> startListingForNewMessages() async* {
    final currentUser = (await ParseUser.currentUser()) as User;

    final lastReceivedMessageDate =
        await _chatLocalDataSource.getLastReceivedMessageDate();

    _receivedMessagesFromServerStreamSubscription = _chatRemoteDataSource
        .startListingForNewMessages(lastReceivedMessageDate)
        .listen((remoteMessage) async {
      final receivedMessage = await _addRemoteReceivedMessageToLocalDatabase(
        remoteMessage,
        currentUser,
      );

      if (receivedMessage != null) {
        _receivedMessagesSteamController.sink.add(receivedMessage);

        if (!_isReceivedMessageFromCurrentlyOpenedUserChat(
          receivedMessage.userId,
        )) {
          _showMessageNotification(
            receivedMessage,
            remoteMessage.sender.userId,
            remoteMessage.sender.name,
          );
        }
      }
    });

    yield* _receivedMessagesSteamController.stream;
  }

  Future<void> pullUpdatedChatUsersInfoFromRemoteServer() async {
    final chatUsers = await _chatUsersLocalDataSource.getAllChatUsers();
    if (chatUsers.isEmpty) {
      return;
    }

    final UnmodifiableListView<ChatUserInfo> updatedChatUsers;
    try {
      updatedChatUsers =
          await _chatUsersRemoteDataSource.getUpdatedChatUserInfoFromServer(
        chatUsers.map((user) => user.userId).toList(),
      );
    } catch (error) {
      log('can not get updated chat users info from server', error: error);
      return;
    }

    for (var updatedChatUser in updatedChatUsers) {
      await _chatUsersLocalDataSource.updateChatUser(updatedChatUser);
    }
  }

  Future<void> dispose() async {
    await _chatRemoteDataSource.dispose();

    await _sendTextMessageProcessManager.disposeAllProcesses();
    await _mediaMessageProcessManager.disposeAllProcesses();

    await _receivedMessagesSteamController.close();
    await _connectionStatusBehaviorSubject.close();
    await _overallUnReadMessagesCountBehaviorSubject.close();

    _receivedMessagesFromServerStreamSubscription?.cancel();
    _connectionStatusStreamSubscription.cancel();
  }

  Future<void> _pullMissedMessagesFromRemoteServer() async {
    final currentUser = (await ParseUser.currentUser()) as User;

    final lastReceivedMessageDate =
        await _chatLocalDataSource.getLastReceivedMessageDate();

    final listOfMissedRemoteMessages = await _chatRemoteDataSource
        .getMissedMessagesFromRemoteServer(lastReceivedMessageDate);

    for (var remoteMessage in listOfMissedRemoteMessages) {
      final receivedMessage = await _addRemoteReceivedMessageToLocalDatabase(
        remoteMessage,
        currentUser,
      );
      if (receivedMessage != null) {
        _receivedMessagesSteamController.sink.add(receivedMessage);
      }
    }
  }

  Future<LocalChatMessage?> _addRemoteReceivedMessageToLocalDatabase(
    RemoteChatMessage remoteMessage,
    User currentUser,
  ) async {
    final shouldMarkReceivedMessageAsRead =
        _isReceivedMessageFromCurrentlyOpenedUserChat(
      remoteMessage.sender.userId,
    );

    final receivedMessage = LocalChatMessage.buildFromRemoteReceivedChatMessage(
      remoteMessage,
      shouldMarkReceivedMessageAsRead,
    );

    final senderUserInfo = ChatUserInfo.buildFromRemoteUser(
      remoteMessage.sender,
      currentUser.userId,
    );

    await _chatUsersLocalDataSource
        .createChatUserIfNotExistsOrUpdate(senderUserInfo);

    final isAddedSuccessfully =
        await _chatLocalDataSource.addNewMessageToChat(receivedMessage);

    if (receivedMessage.messageType == MessageType.text.name) {
      _deleteReceivedTextMessageFromServer(receivedMessage.remoteMessageId!);
    }

    if (isAddedSuccessfully && !shouldMarkReceivedMessageAsRead) {
      _incrementOverallUnReadMessagesCount();
    }

    return isAddedSuccessfully ? receivedMessage : null;
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

  Future<void> _deleteAllMessagesMarkedAsNeedsToBeDeletedFromServer() async {
    final messageNeedsToBeDeletedFromServer = await _chatLocalDataSource
        .getAllMessagesMarkedAsNeedsToBeDeletedFromServer();

    for (var message in messageNeedsToBeDeletedFromServer) {
      if (message.messageType == MessageType.text.name) {
        await _deleteReceivedTextMessageFromServer(message.remoteMessageId!);
      } else {
        await _deleteReceivedMediaMessageFromServer(message.remoteMessageId!);
      }
    }
  }

  Future<void> _deleteReceivedTextMessageFromServer(
      String remoteMessageId) async {
    try {
      await _chatRemoteDataSource.deleteMessageFromServer(
        remoteMessageId,
        true,
      );
    } catch (error) {
      log(
        'could not delete received text message from server, marking as needToBeDeletedFromServer in local database...',
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

  Future<void> _deleteReceivedMediaMessageFromServer(
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

  bool _isReceivedMessageFromCurrentlyOpenedUserChat(
    String messageSenderUserId,
  ) {
    return _currentlyOpenedChatUserId == messageSenderUserId;
  }
}
