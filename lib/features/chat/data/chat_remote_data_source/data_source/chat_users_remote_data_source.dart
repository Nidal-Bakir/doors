import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/chat_user_info.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/media_file.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class ChatUsersRemoteDataSource {
  Future<UnmodifiableListView<ChatUserInfo>> getUpdatedChatUserInfoFromServer(
    List<String> usersIds,
  );
}

class ChatUsersRemoteDataSourceImpl extends ChatUsersRemoteDataSource {
  @override
  Future<UnmodifiableListView<ChatUserInfo>> getUpdatedChatUserInfoFromServer(
    List<String> usersIds,
  ) async {
    final _listOfUpdatedChatUsersInfo = <ChatUserInfo>[];

    final currentUser = (await ParseUser.currentUser()) as User;
    if (currentUser.isAnonymousAccount) {
      throw const AnonymousException(
          'Anonymous user can not get updated chat users info');
    }

    final chatUsersQueryBuilder = QueryBuilder.name(User.keyUserClassName);
    chatUsersQueryBuilder.whereContainedIn(keyVarObjectId, usersIds);
    chatUsersQueryBuilder.keysToReturn([
      User.keyBlockedUsers,
      User.keyProfileImage,
      User.keyName,
    ]);

    final ParseResponse updatedUsersInfoResponse;
    try {
      updatedUsersInfoResponse = await chatUsersQueryBuilder.query();
    } catch (error) {
      throw NoConnectionException(
        'can not get updated chat users info from server \n Error' +
            error.toString(),
      );
    }

    if (updatedUsersInfoResponse.success &&
        updatedUsersInfoResponse.results != null &&
        updatedUsersInfoResponse.count != 0) {
      for (User user in updatedUsersInfoResponse.result) {
        _listOfUpdatedChatUsersInfo.add(
          ChatUserInfo(
            userId: user.userId,
            isCurrentUserBlockedByThisUser:
                user.getListOfBlockedUsers().contains(currentUser.userId),
            name: user.name,
            profileImage:
                user.profileImage == null || _isThereIsABlock(user, currentUser)
                    ? null
                    : MediaFile(mediaUrl: user.profileImage!.url, file: null),
          ),
        );
      }
      return UnmodifiableListView(_listOfUpdatedChatUsersInfo);
    }

    if (updatedUsersInfoResponse.error != null) {
      final error =
          ParseException.extractParseException(updatedUsersInfoResponse.error);
      if (error is ParseSuccessResponseWithNoResults) {
        return UnmodifiableListView([]);
      }
      throw error;
    }
    return UnmodifiableListView([]);
  }

  bool _isThereIsABlock(User chatUser, User currentUser) {
    return chatUser.getListOfBlockedUsers().contains(currentUser.userId) ||
        currentUser.getListOfBlockedUsers().contains(chatUser.userId);
  }
}
