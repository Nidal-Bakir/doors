import 'dart:io';

import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/features/chat/data/chat_local_data_source/database/database_tables.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/media_file.dart';
import 'package:equatable/equatable.dart';

class LocalChatMessage extends Equatable {
  final int localMessageId;
  final DateTime sentDate;
  final DateTime? messageServerCreationDate;
  final String? remoteMessageId;
  final String? textMessage;
  final MediaFile? mediaFile;
  final String messageType;
  final MessageStatues messageStatues;
  final String userId;

  const LocalChatMessage._({
    required this.sentDate,
    required this.messageServerCreationDate,
    required this.localMessageId,
    required this.remoteMessageId,
    required this.textMessage,
    required this.mediaFile,
    required this.messageType,
    required this.messageStatues,
    required this.userId,
  }) : assert(textMessage != null || mediaFile != null);

  factory LocalChatMessage.formJson(Map<String, dynamic> jsonMap) {
    return LocalChatMessage._(
      localMessageId: jsonMap[LocalChatTable.localMessageId],
      remoteMessageId: jsonMap[LocalChatTable.remoteMessageId],
      textMessage: jsonMap[LocalChatTable.textMessage],
      mediaFile: _mediaFileFromJson(jsonMap),
      messageServerCreationDate:
          jsonMap[LocalChatTable.messageServerCreationDate] == null
              ? null
              : DateTime.fromMillisecondsSinceEpoch(
                  jsonMap[LocalChatTable.messageServerCreationDate],
                ),
      messageStatues: MessageStatues.values.firstWhere(
        (statues) => statues.name == jsonMap[LocalChatTable.messageStatues],
      ),
      messageType: jsonMap[LocalChatTable.messageType],
      sentDate: DateTime.fromMillisecondsSinceEpoch(
        jsonMap[LocalChatTable.sentDate],
      ),
      userId: jsonMap[LocalChatTable.receiverUserId],
    );
  }

  static MediaFile? _mediaFileFromJson(Map<String, dynamic> jsonMap) {
    if (jsonMap[LocalChatTable.mediaUrl] == null &&
        jsonMap[LocalChatTable.mediaPath] == null) {
      return null;
    }
    return MediaFile(
      mediaFile: File(jsonMap[LocalChatTable.mediaPath]),
      mediaUrl: jsonMap[LocalChatTable.mediaUrl],
    );
  }

  factory LocalChatMessage.receivedMessage({
    required String? remoteMessageId,
    required String? textMessage,
    required MediaFile? mediaFile,
    required String messageType,
    required DateTime sentDate,
    required DateTime messageServerCreationDate,
    required String senderId,
  }) {
    return LocalChatMessage._(
      messageServerCreationDate: messageServerCreationDate,
      localMessageId: DateTime.now().microsecondsSinceEpoch,
      sentDate: sentDate,
      mediaFile: mediaFile,
      messageStatues: MessageStatues.received,
      messageType: messageType,
      remoteMessageId: remoteMessageId,
      textMessage: textMessage,
      userId: senderId,
    );
  }

  factory LocalChatMessage.sendMessage({
    required String? textMessage,
    required MediaFile? mediaFile,
    required MessageType messageType,
    required String receiverId,
  }) {
    final currentDate = DateTime.now();
    return LocalChatMessage._(
      messageServerCreationDate: null,
      localMessageId: currentDate.microsecondsSinceEpoch,
      sentDate: currentDate,
      mediaFile: mediaFile,
      messageStatues: MessageStatues.pending,
      messageType: messageType.name,
      remoteMessageId: null,
      textMessage: textMessage,
      userId: receiverId,
    );
  }

  Map<String, dynamic> toJson() => {
        LocalChatTable.localMessageId: localMessageId,
        LocalChatTable.remoteMessageId: remoteMessageId,
        LocalChatTable.textMessage: textMessage,
        LocalChatTable.mediaPath: mediaFile?.mediaFile?.path,
        LocalChatTable.mediaUrl: mediaFile?.mediaUrl,
        LocalChatTable.messageType: messageType,
        LocalChatTable.messageStatues: messageStatues.name,
        LocalChatTable.receiverUserId: userId,
        LocalChatTable.sentDate: sentDate.millisecondsSinceEpoch,
        LocalChatTable.messageServerCreationDate:
            messageServerCreationDate?.millisecondsSinceEpoch,
      };

  LocalChatMessage copyWith({
    int? localMessageId,
    DateTime? sentDate,
    String? messageType,
    String? userId,
    Object? remoteMessageId = undefined,
    Object? textMessage = undefined,
    Object? mediaFile = undefined,
    Object? messageStatues = undefined,
    Object? messageServerCreationDate = undefined,
  }) {
    return LocalChatMessage._(
      localMessageId: localMessageId ?? this.localMessageId,
      sentDate: sentDate ?? this.sentDate,
      userId: userId ?? this.userId,
      messageType: messageType ?? this.messageType,
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
        sentDate,
        messageServerCreationDate,
        userId,
      ];
}
