import 'dart:io';

import 'package:doors/features/chat/data/chat_local_data_source/database/database_tables.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/media_file.dart';
import 'package:equatable/equatable.dart';

class ChatUserInfo extends Equatable {
  final String userId;
  final String name;
  final MediaFile? profileImage;

  factory ChatUserInfo.fromJson(Map<String, dynamic> jsonMap) {
    return ChatUserInfo(
      userId: jsonMap[LocalChatUserInfo.userId],
      name: jsonMap[LocalChatUserInfo.name],
      profileImage: _profileImageFromJson(jsonMap),
    );
  }

  static MediaFile? _profileImageFromJson(Map<String, dynamic> jsonMap) {
    if (jsonMap[LocalChatTable.mediaUrl] == null) {
      return null;
    }
    return MediaFile(
      mediaFile: File(jsonMap[LocalChatUserInfo.profileImagePath]),
      mediaUrl: jsonMap[LocalChatUserInfo.profileImageUrl],
    );
  }

  const ChatUserInfo({
    required this.userId,
    required this.name,
    required this.profileImage,
  });

  @override
  List<Object?> get props => [
        userId,
        name,
        profileImage,
      ];
}
