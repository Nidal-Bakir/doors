import 'package:doors/core/auth/model/user.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class AuthLocalDataSource {
  /// Get the current local user info and data
  Future<User> getCurrentLoggedUser();
}

class AuthLocalDataSourceImpl extends AuthLocalDataSource {
  @override
  Future<User> getCurrentLoggedUser() async => await ParseUser.currentUser();
}
