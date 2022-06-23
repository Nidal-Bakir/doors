import 'dart:io';

import 'package:doors/core/models/user.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/features/chat/data/chat_local_data_source/database/database_tables.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/media_file.dart';
import 'package:equatable/equatable.dart';

class ChatUserInfo extends Equatable {
  final String userId;
  final String name;
  final MediaFile? profileImage;
  final bool isCurrentUserBlockedByThisUser;

  // not part of the table schema its a result of Query, do not added to toJson function
  final LocalChatMessage? latestMessage;

  // not part of the table schema its a result of Query, do not added to toJson function
  final int unReadCount;

  const ChatUserInfo({
    required this.userId,
    required this.name,
    required this.profileImage,
    this.isCurrentUserBlockedByThisUser = false,
    this.unReadCount = 0,
    this.latestMessage,
  });

  factory ChatUserInfo.fromJson(Map<String, dynamic> jsonMap) {
    return ChatUserInfo(
      userId: jsonMap[LocalChatUserInfo.userId],
      name: jsonMap[LocalChatUserInfo.name],
      profileImage: _profileImageFromJson(jsonMap),
      isCurrentUserBlockedByThisUser:
          jsonMap[LocalChatUserInfo.isCurrentUserBlockedByThisUser] == 0
              ? false
              : true,
      unReadCount: jsonMap[LocalChatUserInfo.unReadCount],
      latestMessage: jsonMap[LocalChatTable.localMessageId] == null
          ? null
          : LocalChatMessage.formJson(jsonMap),
    );
  }

  factory ChatUserInfo.buildFromRemoteUser(
      User remoteSender, String currentUserId) {
    final isCurrentUserBlockedBySender =
        remoteSender.getListOfBlockedUsers().contains(currentUserId);
    return ChatUserInfo(
      name: remoteSender.name,
      userId: remoteSender.userId,
      isCurrentUserBlockedByThisUser: isCurrentUserBlockedBySender,
      profileImage:
          remoteSender.profileImage == null || isCurrentUserBlockedBySender
              ? null
              : MediaFile(
                  mediaUrl: remoteSender.profileImage?.url,
                  file: null,
                ),
    );
  }

  static MediaFile? _profileImageFromJson(Map<String, dynamic> jsonMap) {
    if (jsonMap[LocalChatUserInfo.profileImagePath] == null &&
        jsonMap[LocalChatUserInfo.profileImageUrl] == null) {
      return null;
    }
    return MediaFile(
      file: File(jsonMap[LocalChatUserInfo.profileImagePath]),
      mediaUrl: jsonMap[LocalChatUserInfo.profileImageUrl],
    );
  }

  Map<String, dynamic> toJson() => {
        LocalChatUserInfo.userId: userId,
        LocalChatUserInfo.name: name,
        LocalChatUserInfo.profileImagePath: profileImage?.file?.path,
        LocalChatUserInfo.profileImageUrl: profileImage?.mediaUrl,
        LocalChatUserInfo.isCurrentUserBlockedByThisUser:
            isCurrentUserBlockedByThisUser ? 1 : 0,
      };

  ChatUserInfo copyWith({
    String? userId,
    String? name,
    int? unReadCount,
    bool? isCurrentUserBlockedByThisUser,
    Object? profileImage = undefined,
    Object? latestMessage = undefined,
  }) =>
      ChatUserInfo(
        userId: userId ?? this.userId,
        name: name ?? this.name,
        unReadCount: unReadCount ?? this.unReadCount,
        isCurrentUserBlockedByThisUser: isCurrentUserBlockedByThisUser ??
            this.isCurrentUserBlockedByThisUser,
        latestMessage: isNotPassedParameter(latestMessage)
            ? this.latestMessage
            : (latestMessage as LocalChatMessage?),
        profileImage: isNotPassedParameter(profileImage)
            ? this.profileImage
            : (profileImage as MediaFile?),
      );

  @override
  List<Object?> get props => [
        userId,
        name,
        profileImage,
        isCurrentUserBlockedByThisUser,
        latestMessage,
        unReadCount,
      ];
}
