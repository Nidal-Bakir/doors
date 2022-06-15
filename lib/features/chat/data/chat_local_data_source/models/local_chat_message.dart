import 'dart:io';

import 'package:doors/core/enums/enums.dart';
import 'package:doors/features/chat/data/chat_local_data_source/database/database_tables.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/media_file.dart';
import 'package:equatable/equatable.dart';

const undefined = Object();

class LocalChatMessage extends Equatable {
  final int localMessageId;
  final DateTime sentDate;
  final String? remoteMessageId;
  final String? textMessage;
  final MediaFile? mediaFile;
  final MessageType messageType;
  final MessageStatues? messageStatues;
  final String userId;

  const LocalChatMessage._({
    required this.sentDate,
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
      messageStatues: MessageStatues.values.firstWhere(
        (statues) => statues.name == jsonMap[LocalChatTable.messageStatues],
      ),
      messageType: MessageType.values.firstWhere(
        (type) => type.name == jsonMap[LocalChatTable.messageType],
      ),
      sentDate: DateTime.fromMillisecondsSinceEpoch(
        jsonMap[LocalChatTable.sentDate],
      ),
      userId: jsonMap[LocalChatTable.userId],
    );
  }
  static MediaFile? _mediaFileFromJson(Map<String, dynamic> jsonMap) {
    if (jsonMap[LocalChatTable.mediaUrl] == null) {
      return null;
    }
    return MediaFile(
      mediaFile: File(jsonMap[LocalChatTable.mediaPath]),
      mediaUrl: jsonMap[LocalChatTable.mediaUrl],
    );
  }

  factory LocalChatMessage.newMessage({
    required String? remoteMessageId,
    required String? textMessage,
    required MediaFile? mediaFile,
    required MessageType messageType,
    required MessageStatues messageStatues,
    required String userId,
  }) {
    final currentDate = DateTime.now();
    return LocalChatMessage._(
      localMessageId: currentDate.microsecondsSinceEpoch,
      sentDate: currentDate,
      mediaFile: mediaFile,
      messageStatues: messageStatues,
      messageType: messageType,
      remoteMessageId: remoteMessageId,
      textMessage: textMessage,
      userId: userId,
    );
  }

  Map<String, dynamic> toJson() => {
        LocalChatTable.localMessageId: localMessageId,
        LocalChatTable.remoteMessageId: remoteMessageId,
        LocalChatTable.textMessage: textMessage,
        LocalChatTable.mediaPath: mediaFile?.mediaFile?.path,
        LocalChatTable.mediaUrl: mediaFile?.mediaUrl,
        LocalChatTable.messageType: messageType.name,
        LocalChatTable.messageStatues: messageStatues?.name,
        LocalChatTable.userId: userId,
        LocalChatTable.sentDate: sentDate.millisecondsSinceEpoch,
      };

  LocalChatMessage copyWith({
    int? localMessageId,
    DateTime? sentDate,
    MessageType? messageType,
    String? userId,
    Object? remoteMessageId = undefined,
    Object? textMessage = undefined,
    Object? mediaFile = undefined,
    Object? messageStatues = undefined,
  }) {
    return LocalChatMessage._(
      localMessageId: localMessageId ?? this.localMessageId,
      sentDate: sentDate ?? this.sentDate,
      userId: userId ?? this.userId,
      messageType: messageType ?? this.messageType,
      remoteMessageId: _notPassedParameter(remoteMessageId)
          ? this.remoteMessageId
          : (remoteMessageId as String?),
      textMessage: _notPassedParameter(textMessage)
          ? this.textMessage
          : (textMessage as String?),
      mediaFile: _notPassedParameter(mediaFile)
          ? this.mediaFile
          : (mediaFile as MediaFile?),
      messageStatues: _notPassedParameter(messageStatues)
          ? this.messageStatues
          : (messageStatues as MessageStatues?),
    );
  }
  /// If [param] not passed to [copyWith] function its value will be [undefined].
  /// So we can differentiate between null parameter and not passed parameter.
  bool _notPassedParameter(Object? param) => param == undefined;

  @override
  List<Object?> get props => [
        localMessageId,
        remoteMessageId,
        textMessage,
        mediaFile,
        messageType,
        messageStatues,
        sentDate,
        userId,
      ];
}
