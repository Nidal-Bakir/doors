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
  static const userId = 'userId';

  static String tableCreationCommand = '''
        CREATE TABLE ${LocalChatTable.tableName} (
        ${LocalChatTable.localMessageId} INTEGER PRIMARY KEY,
        ${LocalChatTable.remoteMessageId} TEXT,
        ${LocalChatTable.textMessage} TEXT,
        ${LocalChatTable.mediaPath} TEXT,
        ${LocalChatTable.mediaUrl} TEXT,
        ${LocalChatTable.messageType} TEXT NOT NULL,
        ${LocalChatTable.sentDate} INTEGER NOT NULL,
        ${LocalChatTable.messageStatues} TEXT,
        ${LocalChatTable.userId} TEXT NOT NULL,
        FOREIGN KEY(${LocalChatTable.userId}) REFERENCES ${LocalChatUserInfo.tableName} (${LocalChatUserInfo.userId})
        )''';
}

abstract class LocalChatUserInfo {
  static const tableName = 'userInfo';

  static const userId = '_userId';
  static const name = 'name';
  static const profileImagePath = 'profileImagePath';
  static const profileImageUrl = 'profileImageUrl';

  static String tableCreationCommand = '''
        CREATE TABLE ${LocalChatUserInfo.tableName} (
        ${LocalChatUserInfo.userId} TEXT PRIMARY KEY,
        ${LocalChatUserInfo.name} TEXT NOT NULL,
        ${LocalChatUserInfo.profileImagePath} TEXT,
        ${LocalChatUserInfo.profileImageUrl} TEXT
        )''';
}
