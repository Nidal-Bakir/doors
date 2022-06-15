import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/models/user.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class AuthRemoteDataSource {
  /// SignUp a new user to parse.
  ///
  ///NOTE: [user] contains all the user info and all the Parse User
  /// Managements capabilities.
  ///
  /// Throws [ServerException].
  Future<User> signUp(User user);

  /// Login a user to parse.
  ///
  ///NOTE: [user] contains all the user info and all the Parse User
  /// Managements capabilities.
  ///
  /// Throws [ServerException].
  Future<User> login(User user);

  /// Get a new updated version of user profile data.
  ///
  /// [currentLocalUser] is needed to get the current accusesToken and
  /// get the new info about the user from the server
  ///
  /// parseSDK will automatically update the local user date.
  ///
  /// Throws [ServerException]
  Future<User> getCurrentUpdatedUserFromServer(User currentLocalUser);

  /// Send verification email to [currentUser].
  ///
  /// The email will not be sent if the user already verified his email address
  ///
  /// Throws [ServerException].
  Future<void> sendVerificationEmail(User currentUser);

  /// Send password reset request email to [currentUser].
  ///
  /// Throws [ServerException].
  Future<void> sendPasswordReset(User currentUser);

  /// Login as anonymous user. Its like a normal user excepts that the [User] object
  /// returns from this call will not have email nor password.
  ///
  /// To Check if a [User] objet is a anonymous or not use [User.isAnonymousAccount].
  ///
  /// Throws [ServerException].
  Future<User> loginAnonymously();

  /// Sends a request to delete the sessions token from the server.
  /// Will also delete the local user data
  ///
  /// Throws [ServerException] in case the logout fail.
  Future<void> logout(User currentUser);
}

class AuthRemoteDataSourceImp extends AuthRemoteDataSource {
  @override
  Future<User> login(User user) async {
    ParseResponse userResponse;
    try {
      userResponse =
          await User(user.emailAddress, user.password, user.emailAddress)
              .login();
    } catch (error) {
      throw const NoConnectionException(
          'error while connecting to the server,can not login');
    }

    if (userResponse.success &&
        userResponse.error == null &&
        userResponse.count != 0) {
      return userResponse.results!.first as User;
    } else {
      throw ParseException.extractParseException(
        userResponse.error,
        isLoginScreen: true,
      );
    }
  }

  @override
  Future<User> signUp(User user) async {
    ParseResponse newUserResponse;
    try {
      await user.profileImage?.save();
      newUserResponse = await user.signUp();
    } catch (error) {
      throw const NoConnectionException(
          'error while connecting to the server, can not signUp');
    }

    if (newUserResponse.success &&
        newUserResponse.error == null &&
        newUserResponse.count != 0) {
      return newUserResponse.results!.first as User;
    } else {
      throw ParseException.extractParseException(newUserResponse.error!);
    }
  }

  @override
  Future<User> getCurrentUpdatedUserFromServer(User currentLocalUser) async {
    ParseResponse updatedUserResponse;
    try {
      updatedUserResponse = await currentLocalUser.getUpdatedUser();
    } catch (error) {
      throw const NoConnectionException(
          'error while connecting to the server, can not getCurrentUpdatedUserFromServer');
    }

    if (updatedUserResponse.success &&
        updatedUserResponse.error == null &&
        updatedUserResponse.count != 0) {
      final updateUser = updatedUserResponse.results!.first as User;
      if (updateUser.accountStatues == AccountStatues.suspended) {
        throw SuspendedAccount();
      }
      return updateUser;
    } else {
      throw ParseException.extractParseException(updatedUserResponse.error!);
    }
  }

  @override
  Future<void> sendVerificationEmail(User currentUser) async {
    ParseResponse verificationResponse;
    try {
      verificationResponse = await currentUser.verificationEmailRequest();
    } catch (error) {
      throw const NoConnectionException(
          'error while connecting to the server, can not sendVerificationEmail');
    }

    if (!verificationResponse.success && verificationResponse.error != null) {
      throw ParseException.extractParseException(verificationResponse.error!);
    }
  }

  @override
  Future<void> sendPasswordReset(User currentUser) async {
    ParseResponse resetPasswordResponse;
    try {
      resetPasswordResponse = await currentUser.requestPasswordReset();
    } catch (error) {
      throw const NoConnectionException(
          'error while connecting to the server, can not sendPasswordReset');
    }

    if (!resetPasswordResponse.success && resetPasswordResponse.error != null) {
      throw ParseException.extractParseException(resetPasswordResponse.error!);
    }
  }

  @override
  Future<User> loginAnonymously() async {
    ParseResponse anonymousUserResponse;
    try {
      anonymousUserResponse = await ParseUser.forQuery().loginAnonymous();
    } catch (error) {
      throw const NoConnectionException(
          'error while connecting to the server, can not loginAnonymously');
    }

    if (anonymousUserResponse.success &&
        anonymousUserResponse.error == null &&
        anonymousUserResponse.count != 0) {
      final anonymousUser = anonymousUserResponse.results!.first as ParseUser;
      return User(anonymousUser.emailAddress, null, anonymousUser.emailAddress,
          sessionToken: anonymousUser.sessionToken)
        ..objectId = anonymousUser.objectId;
    } else {
      throw ParseException.extractParseException(anonymousUserResponse.error!);
    }
  }

  @override
  Future<void> logout(User currentUser) async {
    FirebaseMessaging.instance.deleteToken();
    AwesomeNotifications().cancelAll();
    
    ParseResponse logoutRes;
    try {
      logoutRes = await currentUser.logout();
    } catch (error) {
      throw const NoConnectionException(
          'error while connecting to the server, can not logout');
    }

    if (!logoutRes.success || logoutRes.error != null) {
      throw ParseException.extractParseException(logoutRes.error!);
    }
  }
}
