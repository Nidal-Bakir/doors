import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class ParseException implements Exception {
  final String message;
  final int? code;
  final String? type;

  const ParseException({required this.message, this.code, this.type});

  ParseException.fromParseError(ParseError parseError)
      : this(
          message: parseError.message,
          code: parseError.code,
          type: parseError.type,
        );
}
