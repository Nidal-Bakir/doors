import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:flutter/widgets.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

import 'exception_base.dart';

abstract class ServerException extends ExceptionBase {
  const ServerException(String message) : super(message);
}

class NoConnectionException extends ServerException {
  const NoConnectionException(String message) : super(message);

  @override
  String getLocalMessageError(BuildContext context) {
    return context.loc.please_check_your_internet_connection;
  }
}

class ParseException extends ServerException {
  final int code;
  final String? type;

  const ParseException._(
      {required String message, required this.code, this.type})
      : super(message);

  factory ParseException.extractParseException(ParseError? parseError) {
    if (parseError == null) {
      return ParseUnknownError();
    }
    // custom cloud code errors starts from 1000
    // see [ParseCloudCodeCustomException] docs form more info about the error codes
    if (parseError.code >= 1000) {
      return ParseCloudCodeCustomException.extractCloudCodeException(
        parseError,
      );
    }
    switch (parseError.code) {
      case 209:
        return ParseInvalidSessionToken.fromParseError(parseError);
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
        return ParseUnknownError.fromParseError(parseError);
      case 1:
        return ParseSuccessResponseWithNoResults.fromParseError(parseError);
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

class ParseInvalidSessionToken extends ParseException with SecurityException {
  ParseInvalidSessionToken.fromParseError(ParseError parseError)
      : super.fromParseError(parseError) {
    riseSecurityException();
  }

  @override
  String getLocalMessageError(BuildContext context) {
    return context.loc.invalid_session_token;
  }
}

class ParseSessionMissing extends ParseException with SecurityException {
  ParseSessionMissing.fromParseError(ParseError parseError)
      : super.fromParseError(parseError) {
    riseSecurityException();
  }

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

class ParseUnknownError extends ParseException {
  ParseUnknownError()
      : super.fromParseError(
            ParseError(code: 0, message: 'UnknownError, null'));

  ParseUnknownError.fromParseError(ParseError parseError)
      : super.fromParseError(parseError);
  @override
  String getLocalMessageError(BuildContext context) {
    return context.loc.an_unexpected_error_occurred;
  }
}

class ParseSuccessResponseWithNoResults extends ParseException {
  ParseSuccessResponseWithNoResults.fromParseError(ParseError parseError)
      : super.fromParseError(parseError);

  @override
  String getLocalMessageError(BuildContext context) {
    return context.loc.no_result_found;
  }
}

/// ---------------------------------------------------------------------------
/// |   Code   |      Description                                             |
/// ---------------------------------------------------------------------------
/// |   1000  | User not found with the specified userId                      |
/// ---------------------------------------------------------------------------
/// |   1001  | Plan not found with the specified planId                      |
/// ---------------------------------------------------------------------------
/// |   1004  | Unable generate client token to start the Braintree client    |
/// ---------------------------------------------------------------------------
/// |         | Error while Processing the payment, as a result of null nonce |
/// |   1005  | sent by the Braintrees client or something went wrong wile    |
/// |         | processing the payment for the user                           |
/// ---------------------------------------------------------------------------
/// |   1006  | Unable to delete post image from the server                   |
/// ---------------------------------------------------------------------------
/// |  1010  | Unable to login because the user account has been suspended    |
/// ---------------------------------------------------------------------------
class ParseCloudCodeCustomException extends ParseException {
  ParseCloudCodeCustomException.fromParseError(ParseError parseError)
      : super.fromParseError(parseError);
  factory ParseCloudCodeCustomException.extractCloudCodeException(
      ParseError parseError) {
    switch (parseError.code) {
      case 1000:
        return UserNotFound.fromParseError(parseError);
      case 1001:
        return SelectedPlanNotFound.fromParseError(parseError);
      case 1004:
        return ErrorWhileGeneratingClientPaymentToken.fromParseError(
            parseError);
      case 1005:
        return ErrorWhileProcessingClientPayment.fromParseError(parseError);
      case 1006:
        return ErrorWhileDeletingImageFromTheServer.fromParseError(
            parseError);
      case 1010:
        return SuspendedAccount.fromParseError(parseError);
    }
    return ParseCloudCodeCustomException.fromParseError(parseError);
  }
}

class UserNotFound extends ParseCloudCodeCustomException {
  UserNotFound.fromParseError(ParseError parseError)
      : super.fromParseError(parseError);
  @override
  String getLocalMessageError(BuildContext context) {
    return context.loc.user_not_found_error_while_processing_payment;
  }
}

class SelectedPlanNotFound extends ParseCloudCodeCustomException {
  SelectedPlanNotFound.fromParseError(ParseError parseError)
      : super.fromParseError(parseError);
  @override
  String getLocalMessageError(BuildContext context) {
    return context.loc.selected_plan_not_found_error_while_processing_payment;
  }
}

class SuspendedAccount extends ParseCloudCodeCustomException
    with SecurityException {
  SuspendedAccount()
      : super.fromParseError(
            ParseError(code: 1010, message: 'Your account has been suspended'));

  SuspendedAccount.fromParseError(ParseError parseError)
      : super.fromParseError(parseError) {
    riseSecurityException();
  }
  @override
  String getLocalMessageError(BuildContext context) {
    return context.loc.your_account_has_been_suspended;
  }
}

class ErrorWhileGeneratingClientPaymentToken
    extends ParseCloudCodeCustomException {
  ErrorWhileGeneratingClientPaymentToken.fromParseError(ParseError parseError)
      : super.fromParseError(parseError);

  @override
  String getLocalMessageError(BuildContext context) {
    return context.loc.unexpected_error_while_processing_payment;
  }
}

class ErrorWhileProcessingClientPayment extends ParseCloudCodeCustomException {
  ErrorWhileProcessingClientPayment.fromParseError(ParseError parseError)
      : super.fromParseError(parseError);

  @override
  String getLocalMessageError(BuildContext context) {
    return context.loc.unexpected_error_while_processing_payment;
  }
}

class ErrorWhileDeletingImageFromTheServer
    extends ParseCloudCodeCustomException {
  ErrorWhileDeletingImageFromTheServer.fromParseError(ParseError parseError)
      : super.fromParseError(parseError);

  @override
  String getLocalMessageError(BuildContext context) {
    return context.loc.an_unexpected_error_occurred;
  }
}
