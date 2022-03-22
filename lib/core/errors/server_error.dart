import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class ServerException implements Exception {
  final String message;

  ServerException(this.message);

  @override
  String toString() => message;
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
