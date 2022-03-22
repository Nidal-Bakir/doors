import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:flutter/material.dart';

class ErrorHandler {
  final BuildContext context;
  late final Map<int, String> _localMessage = {
    101: context.loc.invalid_username_or_password,
    -1: context.loc.invalid_username_or_password,
    119: context.loc.operation_forbidden,
    125: context.loc.invalid_email_address,
    150: context.loc.invalid_image_data,
    202: context.loc.user_email_taken,
    203: context.loc.user_email_taken,
    206: context.loc.session_missing,
    209: context.loc.invalid_session_token,
  };

  ErrorHandler(this.context);
  String mapErrorToLocalMessage(Exception exception) {
    if (exception is ParseException) {
      if (exception.code == null) {
        return exception.message;
      } else {
        return _localMessage[exception.code] ?? exception.message;
      }
    } else if (exception is UserException) {
      if (exception is AnonymousException) {
        return context.loc.anonymous_user_forbidden_operation;
      } else if (exception is UserAlreadyLoggedOutException) {
        return context.loc.user_already_logged_out;
      }
    }
    return exception.toString();
  }
}
