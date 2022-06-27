import 'package:collection/collection.dart';
import 'package:doors/features/chat/data/chat_local_data_source/database/database_tables.dart';
import 'package:doors/features/chat/data/chat_local_data_source/database/local_database.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/chat_user_info.dart';
import 'package:sqflite/sqflite.dart';

abstract class ChatUsersLocalDataSource {
  Future<UnmodifiableListView<ChatUserInfo>> getAllChatUsers();

  Future<UnmodifiableListView<ChatUserInfo>>
      getUsersWithLatestMessageAndUnreadCounts();

  Future<void> createChatUserIfNotExistsOrUpdate(ChatUserInfo newChatUserInfo);

  Future<void> updateReceiverUser(ChatUserInfo updatedUserInfo);

  Future<ChatUserInfo> getReceiverUserInfo(String userId);

  Future<void> markTheCurrentUserAsBlockedByTheOtherUser(String otherUserId);
}

class ChatUsersLocalDataSourceImpl extends ChatUsersLocalDataSource {
  final LocalDatabase localDatabase;

  ChatUsersLocalDataSourceImpl(this.localDatabase);

  @override
  Future<UnmodifiableListView<ChatUserInfo>>
      getUsersWithLatestMessageAndUnreadCounts() async {
    final database = await localDatabase.database;

    final usersWithLatestMessages = await database.rawQuery('''
        SELECT * FROM ${LocalChatUserInfo.tableName} AS users
        LEFT JOIN 
        (SELECT * FROM
           (
            SELECT *, COUNT(IIF( ${LocalChatTable.isRead} = 0, 1, NULL)) AS ${LocalChatUserInfo.unReadCount}
            FROM ${LocalChatTable.tableName}
            ORDER BY ${LocalChatTable.sentDate} DESC
           )
           GROUP BY ${LocalChatTable.userId}
        ) AS chat
        ON users.${LocalChatUserInfo.userId} = chat.${LocalChatTable.userId} 
        ORDER BY chat.${LocalChatTable.sentDate} DESC
    ''');

    return UnmodifiableListView(
      usersWithLatestMessages.map((e) => ChatUserInfo.fromJson(e)),
    );
  }

  @override
  Future<void> createChatUserIfNotExistsOrUpdate(
      ChatUserInfo newChatUserInfo) async {
    final database = await localDatabase.database;
    await database.insert(
      LocalChatUserInfo.tableName,
      newChatUserInfo.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  @override
  Future<ChatUserInfo> getReceiverUserInfo(String userId) async {
    final database = await localDatabase.database;
    final chatUserResult = await database.query(
      LocalChatUserInfo.tableName,
      where: '${LocalChatUserInfo.userId} = ? ',
      whereArgs: [userId],
    );
    return ChatUserInfo.fromJson(chatUserResult.first);
  }

  @override
  Future<void> updateReceiverUser(ChatUserInfo updatedUserInfo) async {
    final database = await localDatabase.database;
    await database.update(
      LocalChatUserInfo.tableName,
      updatedUserInfo.toJson(),
      where: '${LocalChatUserInfo.userId} = ? ',
      whereArgs: [updatedUserInfo.userId],
    );
  }

  @override
  Future<UnmodifiableListView<ChatUserInfo>> getAllChatUsers() async {
    final database = await localDatabase.database;
    final chatUsersResult = await database.query(LocalChatUserInfo.tableName);
    return UnmodifiableListView(
      chatUsersResult.map((e) => ChatUserInfo.fromJson(e)),
    );
  }

  @override
  Future<void> markTheCurrentUserAsBlockedByTheOtherUser(
    String otherUserId,
  ) async {
    final database = await localDatabase.database;
    await database.update(
      LocalChatUserInfo.tableName,
      {LocalChatUserInfo.isCurrentUserBlockedByThisUser: 1},
      where: '${LocalChatUserInfo.userId} = ?',
      whereArgs: [otherUserId],
    );
  }
}
