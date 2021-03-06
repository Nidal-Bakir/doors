import 'package:collection/collection.dart';
import 'package:doors/core/config/global_config.dart';
import 'package:doors/core/enums/enums.dart';
import 'package:doors/features/chat/data/chat_local_data_source/database/database_tables.dart';
import 'package:doors/features/chat/data/chat_local_data_source/database/local_database.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:sqflite/sqflite.dart';

abstract class ChatLocalDataSource {
  Future<UnmodifiableListView<LocalChatMessage>> getChatWithUser(
    String userId,
    int amountToSkip,
  );

  Future<bool> addNewMessageToChat(LocalChatMessage newMessage);

  Future<void> updateMessageInChat(LocalChatMessage updatedMessage);

  Future<int> markChatAsRead(String userId);

  Future<int> getCountOfUnreadMessages();

  Future<void> markReceivedChatMessageWithDeletionFromServerStatues(
    String remoteChatMessageId,
    ReceivedMessageDeletionFromServerStatues deletionStatues,
  );

  Future<UnmodifiableListView<LocalChatMessage>>
      getAllMessagesMarkedAsNeedsToBeDeletedFromServer();

  Future<DateTime?> getLastReceivedMessageDate();
}

class ChatLocalDataSourceImpl extends ChatLocalDataSource {
  final LocalDatabase localDatabase;

  ChatLocalDataSourceImpl(this.localDatabase);

  @override
  Future<UnmodifiableListView<LocalChatMessage>> getChatWithUser(
    String userId,
    int amountToSkip,
  ) async {
    final database = await localDatabase.database;
    final chatMessages = await database.query(
      LocalChatTable.tableName,
      limit: GlobalConfig.amountOfMessagesPerPageFromLocalDatabase,
      offset: amountToSkip,
      orderBy: '${LocalChatTable.sentDate} DESC',
      where: '${LocalChatTable.userId} = ?',
      whereArgs: [userId],
    );
    return UnmodifiableListView(
      chatMessages.map((e) => LocalChatMessage.formJson(e)),
    );
  }

  @override
  Future<bool> addNewMessageToChat(LocalChatMessage newMessage) async {
    final database = await localDatabase.database;
    final insertionId = await database.insert(
      LocalChatTable.tableName,
      newMessage.toJson(),
      conflictAlgorithm: ConflictAlgorithm.ignore,
    );

    // returns 0 if the the insertion ignored because of [ConflictAlgorithm}
    return insertionId != 0;
  }

  @override
  Future<void> updateMessageInChat(LocalChatMessage updatedMessage) async {
    final database = await localDatabase.database;
    await database.update(
      LocalChatTable.tableName,
      updatedMessage.toJson(),
      where: '${LocalChatTable.localMessageId} = ?',
      whereArgs: [updatedMessage.localMessageId],
    );
  }

  @override
  Future<DateTime?> getLastReceivedMessageDate() async {
    final database = await localDatabase.database;

    final lastReceivedMessageDateResult = await database.query(
      LocalChatTable.tableName,
      columns: [LocalChatTable.messageServerCreationDate],
      limit: 1,
      orderBy: '${LocalChatTable.messageServerCreationDate} DESC',
      where: '${LocalChatTable.isSendedByCurrentUser} = ? ',
      whereArgs: [
        0, //false
      ],
    );

    if (lastReceivedMessageDateResult.isEmpty ||
        lastReceivedMessageDateResult
                .firstOrNull?[LocalChatTable.messageServerCreationDate] ==
            null) {
      return null;
    }

    return DateTime.fromMillisecondsSinceEpoch(
      lastReceivedMessageDateResult
          .first[LocalChatTable.messageServerCreationDate] as int,
    );
  }

  @override
  Future<int> markChatAsRead(String userId) async {
    final database = await localDatabase.database;

    return database.update(
      LocalChatTable.tableName,
      {LocalChatTable.isRead: 1},
      where: '${LocalChatTable.userId}= ? AND ${LocalChatTable.isRead} = ?',
      whereArgs: [
        userId,
        0, // false
      ],
    );
  }

  @override
  Future<int> getCountOfUnreadMessages() async {
    final database = await localDatabase.database;

    final result = await database.rawQuery('''
            SELECT COUNT(*) FROM ${LocalChatTable.tableName}
            WHERE ${LocalChatTable.isRead} = 0
        ''');

    return Sqflite.firstIntValue(result) ?? 0;
  }

  @override
  Future<void> markReceivedChatMessageWithDeletionFromServerStatues(
    String remoteChatMessageId,
    ReceivedMessageDeletionFromServerStatues deletionStatues,
  ) async {
    final database = await localDatabase.database;
    await database.update(
      LocalChatTable.tableName,
      {
        LocalChatTable.receivedMessageDeletionFromServerStatues:
            deletionStatues.name
      },
      where: '${LocalChatTable.remoteMessageId}= ?',
      whereArgs: [remoteChatMessageId],
    );
  }

  @override
  Future<UnmodifiableListView<LocalChatMessage>>
      getAllMessagesMarkedAsNeedsToBeDeletedFromServer() async {
    final database = await localDatabase.database;
    final messagesNeedsToBeDeletedFromServer = await database.query(
      LocalChatTable.tableName,
      where: '${LocalChatTable.receivedMessageDeletionFromServerStatues} = ?',
      whereArgs: [
        ReceivedMessageDeletionFromServerStatues.needToBeDeletedFromServer.name
      ],
    );
    return UnmodifiableListView(
      messagesNeedsToBeDeletedFromServer
          .map((e) => LocalChatMessage.formJson(e)),
    );
  }
}
