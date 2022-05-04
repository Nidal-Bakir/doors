import 'package:doors/core/errors/security_exception_flow.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

abstract class ExceptionBase extends Equatable implements Exception {
  final String message;

  const ExceptionBase(this.message);
  @override
  String toString() => message;

  String getLocalMessageError(BuildContext context) {
    return toString();
  }

  @override
  List<Object?> get props => [message];
}

/// Security related exception like [ParseInvalidSessionToken] or any exception raised,
/// and should be treated with caution and act based on its type of risk.
///
/// e.g: when [ParseInvalidSessionToken] raised in any part of the app by any connecting to the server
/// the app should immediately logout the current user.
mixin SecurityException implements ExceptionBase {
  void riseSecurityException() {
    GetIt.instance.get<SecurityExceptionFlow>().riseSecurityException(this);
  }
}
