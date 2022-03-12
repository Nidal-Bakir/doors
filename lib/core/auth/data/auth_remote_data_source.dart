import 'package:doors/core/auth/model/user.dart';
import 'package:doors/core/errors/errors.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class AuthRemoteDataSource {
  /// SignUp a new user to parse.
  ///
  ///NOTE: [user] contains all the user info and all the Parse User
  /// Managements capabilities.
  ///
  /// Throws [ParseException].
  Future<User> signUp(User user);

  /// Login a user to parse.
  ///
  ///NOTE: [user] contains all the user info and all the Parse User
  /// Managements capabilities.
  ///
  /// Throws [ParseException].
  Future<User> login(User user);

  /// Get a new updated version of user profile data.
  ///
  /// [currentLocalUser] is needed to get the current accusesToken and
  /// get the new info about the user from the server
  ///
  /// parseSDK will automatically update the local user date.
  ///
  /// Throws [ParseException]
  Future<User> getCurrentUpdatedUserFromServer(User currentLocalUser);

  /// Send verification email to [currentUser].
  ///
  /// The email will not be sent if the user already verified his email address
  ///
  /// Throws [ParseException].
  Future<void> sendVerificationEmail(User currentUser);

  /// Send password reset request email to [currentUser].
  ///
  /// Throws [ParseException].
  Future<void> sendPasswordReset(User currentUser);


/*  TODO: should be in user profile feature!!

  /// Update the current user with new data.
  ///
  /// parseSDK will automatically update the local user data.
  ///
  /// Throws [ParseException].
  Future<User> updateCurrentUserData(User currentUserWithUpdatedDate);
*/
  /// Login as anonymous user. Its like a normal user excepts that the [User] object
  /// returns from this call will not have email nor password.
  ///
  /// To Check if a [User] objet is a anonymous or not use [User.isAnonymousUser].
  ///
  /// Throws [ParseException].
  Future<User> loginAnonymously();

  /// Sends a request to delete the sessions token from the server.
  /// Will also delete the local user data
  ///
  /// Throws [ParseException] in case the logout fail.
  Future<void> logout(User currentUser);
}

class AuthRemoteDataSourceImp extends AuthRemoteDataSource {
  @override
  Future<User> login(User user) async {
    final userRes =
        await User(user.emailAddress, user.password, user.emailAddress).login();

    if (userRes.success && userRes.error == null && userRes.count != 0) {
      return userRes.results!.first as User;
    } else {
      throw ParseException.fromParseError(userRes.error!);
    }
  }

  @override
  Future<User> signUp(User user) async {
    var newUserRes = await user.signUp();

    if (newUserRes.success &&
        newUserRes.error == null &&
        newUserRes.count != 0) {
      return newUserRes.results!.first as User;
    } else {
      throw ParseException.fromParseError(newUserRes.error!);
    }
  }

  @override
  Future<User> getCurrentUpdatedUserFromServer(User currentLocalUser) async {
    final updatedUser = await currentLocalUser.getUpdatedUser();
    if (updatedUser.success &&
        updatedUser.error == null &&
        updatedUser.count != 0) {
      return updatedUser.results!.first as User;
    } else {
      throw ParseException.fromParseError(updatedUser.error!);
    }
  }

  @override
  Future<void> sendVerificationEmail(User currentUser) async {
    final verificationResponse = await currentUser.verificationEmailRequest();
    if (!verificationResponse.success && verificationResponse.error != null) {
      throw ParseException.fromParseError(verificationResponse.error!);
    }
  }

  @override
  Future<void> sendPasswordReset(User currentUser) async {
    final verificationResponse = await currentUser.requestPasswordReset();
    if (!verificationResponse.success && verificationResponse.error != null) {
      throw ParseException.fromParseError(verificationResponse.error!);
    }
  }
/* TODO: should be in user profile feature!!
  @override
  Future<User> updateCurrentUserData(User currentUserWithUpdatedDate) async {
    final updatedUser = await currentUserWithUpdatedDate.save();
    if (updatedUser.success &&
        updatedUser.error == null &&
        updatedUser.count != 0) {
      return updatedUser.results!.first as User;
    } else {
      throw ParseException.fromParseError(updatedUser.error!);
    }
  }
*/
  @override
  Future<User> loginAnonymously() async {
    final anonymousUserRes = await ParseUser.forQuery().loginAnonymous();
    if (anonymousUserRes.success &&
        anonymousUserRes.error == null &&
        anonymousUserRes.count != 0) {
      final anonymousUser = anonymousUserRes.results!.first as ParseUser;
      return User(anonymousUser.username, null, null,
          sessionToken: anonymousUser.sessionToken);
    } else {
      throw ParseException.fromParseError(anonymousUserRes.error!);
    }
  }

  @override
  Future<void> logout(User currentUser) async {
    final logoutRes = await currentUser.logout();
    if (!logoutRes.success || logoutRes.error != null) {
      throw ParseException.fromParseError(logoutRes.error!);
    }
  }
}
