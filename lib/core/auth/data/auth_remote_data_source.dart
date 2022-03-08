import 'package:doors/core/auth/model/user.dart';
import 'package:doors/core/errors/parse_exception.dart';

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
  /// Throws [ParseException]
  Future<User> getCurrentUpdatedUserFromServer(User currentLocalUser);
}

class RemoteAuthDataSourceImp extends AuthRemoteDataSource {
  @override
  Future<User> login(User user) async {
    final userRes =
        await User(user.emailAddress, user.password, user.emailAddress).login();

    if (userRes.success && userRes.error != null && userRes.count != 0) {
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
}
