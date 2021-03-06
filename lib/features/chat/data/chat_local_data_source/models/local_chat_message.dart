import 'dart:convert';
import 'dart:io';

import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/features/chat/data/chat_local_data_source/database/database_tables.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/media_file.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/message_meta_data.dart';
import 'package:doors/features/chat/data/chat_remote_data_source/models/remote_chat_message.dart';
import 'package:equatable/equatable.dart';
import 'package:collection/collection.dart';

class LocalChatMessage extends Equatable {
  final int localMessageId;
  final DateTime sentDate;
  final DateTime? messageServerCreationDate;
  final String? remoteMessageId;
  final String? textMessage;
  final MediaFile? mediaFile;
  final String messageType;
  final MessageStatues messageStatues;
  final MessageMetaData messageMetaData;
  final bool isRead;
  final bool isSendedByCurrentUser;
  final ReceivedMessageDeletionFromServerStatues?
      receivedMessageDeletionFromServerStatues;
  final String userId;

  const LocalChatMessage._({
    required this.sentDate,
    required this.receivedMessageDeletionFromServerStatues,
    required this.messageServerCreationDate,
    required this.localMessageId,
    required this.remoteMessageId,
    required this.textMessage,
    required this.mediaFile,
    required this.messageType,
    required this.messageStatues,
    required this.messageMetaData,
    required this.isRead,
    required this.isSendedByCurrentUser,
    required this.userId,
  }) : assert(textMessage != null || mediaFile != null);

  factory LocalChatMessage.formJson(Map<String, dynamic> jsonMap) {
    return LocalChatMessage._(
      localMessageId: jsonMap[LocalChatTable.localMessageId],
      remoteMessageId: jsonMap[LocalChatTable.remoteMessageId],
      textMessage: jsonMap[LocalChatTable.textMessage],
      mediaFile: _mediaFileFromJson(jsonMap),
      messageMetaData: MessageMetaData.factory(
        jsonMap[LocalChatTable.messageType],
        jsonDecode(jsonMap[LocalChatTable.metaData]),
      ),
      messageServerCreationDate:
          jsonMap[LocalChatTable.messageServerCreationDate] == null
              ? null
              : DateTime.fromMillisecondsSinceEpoch(
                  jsonMap[LocalChatTable.messageServerCreationDate],
                ),
      messageStatues: MessageStatues.values.firstWhere(
        (statues) => statues.name == jsonMap[LocalChatTable.messageStatues],
      ),
      receivedMessageDeletionFromServerStatues:
          ReceivedMessageDeletionFromServerStatues.values.firstWhereOrNull(
        (statues) =>
            statues.name ==
            jsonMap[LocalChatTable.receivedMessageDeletionFromServerStatues],
      ),
      messageType: jsonMap[LocalChatTable.messageType],
      sentDate: DateTime.fromMillisecondsSinceEpoch(
        jsonMap[LocalChatTable.sentDate],
      ),
      isRead: jsonMap[LocalChatTable.isRead] == 1 ? true : false,
      isSendedByCurrentUser:
          jsonMap[LocalChatTable.isSendedByCurrentUser] == 1 ? true : false,
      userId: jsonMap[LocalChatTable.userId],
    );
  }

  static MediaFile? _mediaFileFromJson(Map<String, dynamic> jsonMap) {
    if (jsonMap[LocalChatTable.mediaUrl] == null &&
        jsonMap[LocalChatTable.mediaPath] == null) {
      return null;
    }
    return MediaFile(
      file: jsonMap[LocalChatTable.mediaPath] == null
          ? null
          : File(jsonMap[LocalChatTable.mediaPath]),
      mediaUrl: jsonMap[LocalChatTable.mediaUrl],
      thumbnailFile: jsonMap[LocalChatTable.thumbnailPath] == null
          ? null
          : File(jsonMap[LocalChatTable.thumbnailPath]),
      thumbnailUrl: jsonMap[LocalChatTable.thumbnailUrl],
    );
  }

  factory LocalChatMessage.receivedMessage({
    required String? remoteMessageId,
    required String? textMessage,
    required MediaFile? mediaFile,
    required String messageType,
    required DateTime sentDate,
    required MessageMetaData messageMetaData,
    required DateTime messageServerCreationDate,
    required bool isRead,
    required String senderId,
  }) {
    return LocalChatMessage._(
      messageServerCreationDate: messageServerCreationDate,
      localMessageId: DateTime.now().microsecondsSinceEpoch,
      sentDate: sentDate,
      messageMetaData: messageMetaData,
      mediaFile: mediaFile,
      messageStatues: MessageStatues.received,
      messageType: messageType,
      remoteMessageId: remoteMessageId,
      textMessage: textMessage,
      isRead: isRead,
      isSendedByCurrentUser: false,
      userId: senderId,
      receivedMessageDeletionFromServerStatues: messageType ==
              MessageType.text.name
          ? ReceivedMessageDeletionFromServerStatues.needToBeDeletedFromServer
          : ReceivedMessageDeletionFromServerStatues
              .onHoldToBeDownLoadedFromServer,
    );
  }

  factory LocalChatMessage.sendMessage({
    required String? textMessage,
    required MediaFile? mediaFile,
    required MessageType messageType,
    required MessageMetaData messageMetaData,
    required String receiverId,
  }) {
    final currentDate = DateTime.now();
    return LocalChatMessage._(
      messageServerCreationDate: null,
      localMessageId: currentDate.microsecondsSinceEpoch,
      sentDate: currentDate,
      mediaFile: mediaFile,
      isRead: true,
      isSendedByCurrentUser: true,
      messageMetaData: messageMetaData,
      messageStatues: MessageStatues.pending,
      messageType: messageType.name,
      remoteMessageId: null,
      textMessage: textMessage,
      userId: receiverId,
      receivedMessageDeletionFromServerStatues: null,
    );
  }

  factory LocalChatMessage.buildFromRemoteReceivedChatMessage(
          RemoteChatMessage remoteMessage, bool isRead) =>
      LocalChatMessage.receivedMessage(
        remoteMessageId: remoteMessage.messageId,
        textMessage: remoteMessage.textMessage,
        mediaFile: remoteMessage.receivedMessageType == MessageType.text.name
            ? null
            : MediaFile(
                mediaUrl: remoteMessage.media?.url,
                file: null,
                thumbnailUrl: remoteMessage.thumbnail?.url,
                thumbnailFile: null,
              ),
        messageType: remoteMessage.receivedMessageType,
        messageMetaData: MessageMetaData.factory(
          remoteMessage.receivedMessageType,
          remoteMessage.metaData,
        ),
        sentDate: remoteMessage.sentDate,
        messageServerCreationDate: remoteMessage.messageCreationDateOnServer,
        isRead: isRead,
        senderId: remoteMessage.sender.userId,
      );

  Map<String, dynamic> toJson() => {
        LocalChatTable.localMessageId: localMessageId,
        LocalChatTable.remoteMessageId: remoteMessageId,
        LocalChatTable.textMessage: textMessage,
        LocalChatTable.mediaPath: mediaFile?.file?.path,
        LocalChatTable.mediaUrl: mediaFile?.mediaUrl,
        LocalChatTable.thumbnailPath: mediaFile?.thumbnailFile?.path,
        LocalChatTable.thumbnailUrl: mediaFile?.thumbnailUrl,
        LocalChatTable.messageType: messageType,
        LocalChatTable.metaData: jsonEncode(messageMetaData.toJson()),
        LocalChatTable.messageStatues: messageStatues.name,
        LocalChatTable.userId: userId,
        LocalChatTable.sentDate: sentDate.millisecondsSinceEpoch,
        LocalChatTable.isRead: isRead ? 1 : 0,
        LocalChatTable.isSendedByCurrentUser: isSendedByCurrentUser ? 1 : 0,
        LocalChatTable.messageServerCreationDate:
            messageServerCreationDate?.millisecondsSinceEpoch,
        LocalChatTable.receivedMessageDeletionFromServerStatues:
            receivedMessageDeletionFromServerStatues?.name,
      };

  LocalChatMessage copyWith({
    int? localMessageId,
    DateTime? sentDate,
    String? messageType,
    MessageMetaData? messageMetaData,
    String? userId,
    bool? isRead,
    bool? isSendedByCurrentUser,
    Object? remoteMessageId = undefined,
    Object? textMessage = undefined,
    Object? mediaFile = undefined,
    Object? messageStatues = undefined,
    Object? messageServerCreationDate = undefined,
    Object? receivedMessageDeletionFromServerStatues = undefined,
  }) {
    return LocalChatMessage._(
      localMessageId: localMessageId ?? this.localMessageId,
      sentDate: sentDate ?? this.sentDate,
      userId: userId ?? this.userId,
      messageType: messageType ?? this.messageType,
      messageMetaData: messageMetaData ?? this.messageMetaData,
      isRead: isRead ?? this.isRead,
      isSendedByCurrentUser:
          isSendedByCurrentUser ?? this.isSendedByCurrentUser,
      remoteMessageId: isNotPassedParameter(remoteMessageId)
          ? this.remoteMessageId
          : (remoteMessageId as String?),
      textMessage: isNotPassedParameter(textMessage)
          ? this.textMessage
          : (textMessage as String?),
      mediaFile: isNotPassedParameter(mediaFile)
          ? this.mediaFile
          : (mediaFile as MediaFile?),
      messageStatues: isNotPassedParameter(messageStatues)
          ? this.messageStatues
          : (messageStatues as MessageStatues),
      messageServerCreationDate: isNotPassedParameter(messageServerCreationDate)
          ? this.messageServerCreationDate
          : (messageServerCreationDate as DateTime?),
      receivedMessageDeletionFromServerStatues:
          isNotPassedParameter(receivedMessageDeletionFromServerStatues)
              ? this.receivedMessageDeletionFromServerStatues
              : (receivedMessageDeletionFromServerStatues
                  as ReceivedMessageDeletionFromServerStatues?),
    );
  }

  @override
  List<Object?> get props => [
        localMessageId,
        remoteMessageId,
        textMessage,
        mediaFile,
        messageType,
        messageStatues,
        messageMetaData,
        sentDate,
        receivedMessageDeletionFromServerStatues,
        messageServerCreationDate,
        isRead,
        isSendedByCurrentUser,
        userId,
      ];
}
