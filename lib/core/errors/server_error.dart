import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:flutter/widgets.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

import 'exception_base.dart';

abstract class ServerException extends ExceptionBase {
  const ServerException(String message) : super(message);
}

class ParseException extends ServerException {
  final int code;
  final String? type;

  const ParseException._(
      {required String message, required this.code, this.type})
      : super(message);

  factory ParseException.extractParseException(ParseError parseError) {
    switch (parseError.code) {
      case 209:
        return ParseInvalidSessionToke.fromParseError(parseError);
      case 206:
        return ParseSessionMissing.fromParseError(parseError);
      case 202:
        return ParseUserEmailTaken.fromParseError(parseError);
      case 203:
        return ParseUserEmailTaken.fromParseError(parseError);
      case 150:
        return ParseInvalidImageData.fromParseError(parseError);
      case 125:
        return ParseInvalidEmailAddress.fromParseError(parseError);
      case 101:
        return ParseInvalidUsernameOrPassword.fromParseError(parseError);
      case -1:
        return ParseInvalidUsernameOrPassword.fromParseError(parseError);
    }
    return ParseException.fromParseError(parseError);
  }
  ParseException.fromParseError(ParseError parseError)
      : this._(
          message: parseError.message,
          code: parseError.code,
          type: parseError.type,
        );

  @override
  List<Object?> get props => [...super.props, code, type];
}

class ParseInvalidSessionToke extends ParseException {
  ParseInvalidSessionToke.fromParseError(ParseError parseError)
      : super.fromParseError(parseError);

  @override
  String getLocalMessageError(BuildContext context) {
    return context.loc.invalid_session_token;
  }
}

class ParseSessionMissing extends ParseException {
  ParseSessionMissing.fromParseError(ParseError parseError)
      : super.fromParseError(parseError);

  @override
  String getLocalMessageError(BuildContext context) {
    return context.loc.session_missing;
  }
}

class ParseUserEmailTaken extends ParseException {
  ParseUserEmailTaken.fromParseError(ParseError parseError)
      : super.fromParseError(parseError);

  @override
  String getLocalMessageError(BuildContext context) {
    return context.loc.user_email_taken;
  }
}

class ParseInvalidImageData extends ParseException {
  ParseInvalidImageData.fromParseError(ParseError parseError)
      : super.fromParseError(parseError);

  @override
  String getLocalMessageError(BuildContext context) {
    return context.loc.invalid_image_data;
  }
}

class ParseInvalidEmailAddress extends ParseException {
  ParseInvalidEmailAddress.fromParseError(ParseError parseError)
      : super.fromParseError(parseError);

  @override
  String getLocalMessageError(BuildContext context) {
    return context.loc.invalid_email_address;
  }
}

class ParseOperationForbidden extends ParseException {
  ParseOperationForbidden.fromParseError(ParseError parseError)
      : super.fromParseError(parseError);

  @override
  String getLocalMessageError(BuildContext context) {
    return context.loc.operation_forbidden;
  }
}

class ParseInvalidUsernameOrPassword extends ParseException {
  ParseInvalidUsernameOrPassword.fromParseError(ParseError parseError)
      : super.fromParseError(parseError);

  @override
  String getLocalMessageError(BuildContext context) {
    return context.loc.invalid_username_or_password;
  }
}
