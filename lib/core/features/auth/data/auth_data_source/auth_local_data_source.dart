import 'package:doors/core/models/user.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class AuthLocalDataSource {
  /// Get the current local user info and data.
  /// 
  /// Returns null in case no (login, signUp or loginAnonymously) preformed.
  /// Or the user logout and did not login again as anonymous user for any error.
  Future<User?> getCurrentLoggedUser();
}

class AuthLocalDataSourceImpl extends AuthLocalDataSource {
  @override
  Future<User?> getCurrentLoggedUser() async => await ParseUser.currentUser();
}
