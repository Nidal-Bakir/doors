import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class ServerException implements Exception {
  final String message;

  ServerException(this.message);
}

class ParseException extends ServerException {
  final int? code;
  final String? type;

  ParseException({required String message, this.code, this.type})
      : super(message);

  ParseException.fromParseError(ParseError parseError)
      : this(
          message: parseError.message,
          code: parseError.code,
          type: parseError.type,
        );
}

abstract class UserException implements Exception {
  final String message;

  UserException(this.message);
}

/// Throws when an operation required logged-in users and not anonymous one.
class AnonymousException extends UserException {
  AnonymousException(String message) : super(message);
}

class UserAlreadyLoggedOutException extends UserException {
  UserAlreadyLoggedOutException() : super('User already loggedOut');
}
