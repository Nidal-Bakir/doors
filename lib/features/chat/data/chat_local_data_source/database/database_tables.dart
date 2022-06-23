abstract class LocalChatTable {
  static const tableName = 'chat';

  static const localMessageId = '_id';
  static const remoteMessageId = 'remoteMessageId';
  static const textMessage = 'textMessage';
  static const mediaPath = 'mediaPath';
  static const mediaUrl = 'mediaUrl';
  static const messageType = 'messageType';
  static const messageStatues = 'messageStatues';
  static const sentDate = 'sentDate';
  static const messageServerCreationDate = 'messageServerCreationDate';
  static const isRead = 'isRead';
  static const isSendedByCurrentUser = 'isSendedByCurrentUser';
  static const receivedMessageDeletionFromServerStatues =
      'receivedMessageDeletionFromServerStatues';
  static const receiverUserId = 'receiverUserId';

  static String tableCreationCommand = '''
        CREATE TABLE ${LocalChatTable.tableName} (
        ${LocalChatTable.localMessageId} INTEGER PRIMARY KEY,
        ${LocalChatTable.remoteMessageId} TEXT UNIQUE,
        ${LocalChatTable.textMessage} TEXT,
        ${LocalChatTable.mediaPath} TEXT,
        ${LocalChatTable.mediaUrl} TEXT,
        ${LocalChatTable.messageType} TEXT NOT NULL,
        ${LocalChatTable.sentDate} INTEGER NOT NULL,
        ${LocalChatTable.messageServerCreationDate} INTEGER,
        ${LocalChatTable.messageStatues} TEXT NOT NULL,
        ${LocalChatTable.isRead} INTEGER NOT NULL DEFAULT 0,
        ${LocalChatTable.isSendedByCurrentUser} INTEGER NOT NULL,
        ${LocalChatTable.receiverUserId} TEXT NOT NULL,
        ${LocalChatTable.receivedMessageDeletionFromServerStatues} TEXT,
        FOREIGN KEY(${LocalChatTable.receiverUserId}) REFERENCES ${LocalChatUserInfo.tableName} (${LocalChatUserInfo.userId})
        )''';
}

abstract class LocalChatUserInfo {
  static const tableName = 'userInfo';

  static const userId = '_userId';
  static const name = 'name';
  static const profileImagePath = 'profileImagePath';
  static const profileImageUrl = 'profileImageUrl';
  static const isCurrentUserBlockedByThisUser =
      'isCurrentUserBlockedByThisUser';

  static String tableCreationCommand = '''
        CREATE TABLE ${LocalChatUserInfo.tableName} (
        ${LocalChatUserInfo.userId} TEXT PRIMARY KEY,
        ${LocalChatUserInfo.name} TEXT NOT NULL,
        ${LocalChatUserInfo.profileImagePath} TEXT,
        ${LocalChatUserInfo.profileImageUrl} TEXT,
        ${LocalChatUserInfo.isCurrentUserBlockedByThisUser} INTEGER NOT NULL DEFAULT 0
        )''';

  /// this is not part of the table schema its the name of result a Query
  /// in ChatLocalDataSource.getUsersWithLatestMessageAndUnreadCounts.
  static const unReadCount = 'unReadCount';
}
