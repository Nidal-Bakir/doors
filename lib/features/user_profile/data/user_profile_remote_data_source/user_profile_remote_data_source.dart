import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/features/auth/model/user.dart';
import 'package:doors/core/utils/parse_util_global_functions/parse_util_global_function.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class UserProfileRemoteDataSource {
  /// Edit the current user profile
  ///
  /// [editedUserProfile]: the new profile info.
  ///
  /// [oldUserProfileImage]: the old profile image in case the user delete or replace
  /// his profile image, so we can delete the old image from the server.
  ///
  /// Return void to indicate that the edit operation was successful.
  ///
  /// Throws [ExceptionBase]:
  /// * [ServerException] in case of connection error or parse error.
  /// * [AnonymousException] if the user is Anonymous user.
  /// * [ForbiddenOperation] if the user is trying to edit other users profile,
  /// that should not happened, but just in case!
  Future<void> editUserProfile(
      User editedUserProfile, ParseFile? oldUserProfileImage);
}

class UserProfileRemoteDataSourceImpl extends UserProfileRemoteDataSource {
  @override
  Future<void> editUserProfile(
      User editedUserProfile, ParseFile? oldUserProfileImage) async {
    assert(editedUserProfile.objectId != null);
    final _currentUser = (await ParseUser.currentUser()) as User;
    if (_currentUser.isAnonymousAccount) {
      throw const AnonymousException('Anonymous user can not edit profiles');
    }
    if (editedUserProfile.userId != _currentUser.userId) {
      throw const ForbiddenOperation(
          'the user can not edit other users profiles!!');
    }

    await deleteOldImageIfTheCurrentImageChanged(
      oldImage: oldUserProfileImage,
      currentImage: editedUserProfile.profileImage,
      objectId: editedUserProfile.objectId!,
      className: User.keyUserClassName,
      imageFieldName: User.keyProfileImage,
    );

    if (editedUserProfile.profileImage != null &&
        !editedUserProfile.profileImage!.saved) {
      await saveNewImageToParseServer(editedUserProfile.profileImage!);
    }

    final ParseResponse editPostResponse;
    try {
      editPostResponse = await editedUserProfile.save();
    } catch (e) {
      throw const NoConnectionException('can not edit the post');
    }
    if (!editPostResponse.success) {
      throw ParseException.extractParseException(editPostResponse.error);
    }
  }
}
