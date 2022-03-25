import 'package:doors/core/features/auth/model/user.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class AuthLocalDataSource {
  /// Get the current local user info and data.
  /// 
  ///  Returns null in case no (login | signUp) preformed or
  /// the user logout.
  Future<User?> getCurrentLoggedUser();
}

class AuthLocalDataSourceImpl extends AuthLocalDataSource {
  @override
  Future<User?> getCurrentLoggedUser() async => await ParseUser.currentUser();
}
