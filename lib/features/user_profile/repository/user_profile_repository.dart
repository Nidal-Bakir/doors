import 'package:dartz/dartz.dart';
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/features/auth/model/user.dart';
import 'package:doors/features/user_profile/data/user_profile_remote_data_source/user_profile_remote_data_source.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class UserProfileRepository {
  final UserProfileRemoteDataSource _userProfileRemoteDataSource;

  UserProfileRepository(this._userProfileRemoteDataSource);
  /// Edit the current user profile
  ///
  /// [editedUserProfile]: the new profile info.
  ///
  /// [oldUserProfileImage]: the old profile image in case the user delete or replace
  /// his profile image, so we can delete the old image from the server.
  ///
  /// Return either (void): to indicate that the edit operation was successful.
  ///
  /// OR [ExceptionBase]:
  /// * [ServerException] in case of connection error or parse error.
  /// * [AnonymousException] if the user is Anonymous user.
  /// * [ForbiddenOperation] if the user is trying to edit other users profile,
  /// that should not happened, but just in case!
  Future<Either<ExceptionBase, void>> editUserProfile(
      User editedUserProfile, ParseFile? oldUserProfileImage) async {
    try {
      return Right(await _userProfileRemoteDataSource.editUserProfile(
          editedUserProfile, oldUserProfileImage));
    } on ExceptionBase catch (error) {
      return Left(error);
    }
  }
}
