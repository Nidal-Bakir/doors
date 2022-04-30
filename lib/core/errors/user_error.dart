import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:flutter/material.dart';

abstract class UserException extends ExceptionBase {
  const UserException(String message) : super(message);
}

/// Throws when an operation required logged-in users and not anonymous one.
class AnonymousException extends UserException {
  const AnonymousException(String message) : super(message);

  @override
  String getLocalMessageError(BuildContext context) {
    return context.loc.anonymous_user_forbidden_operation;
  }
}

/// Throws when an operation should not be preformed by this user.
class ForbiddenOperation extends UserException {
  const ForbiddenOperation(String message) : super(message);

  @override
  String getLocalMessageError(BuildContext context) {
    return context.loc.forbidden_operation;
  }
}

class UserAlreadyLoggedOutException extends UserException {
  const UserAlreadyLoggedOutException() : super('User already loggedOut');
  @override
  String getLocalMessageError(BuildContext context) {
    return context.loc.user_already_logged_out;
  }
}

class PayPalFlowWasCanceledByTheUser extends UserException {
  const PayPalFlowWasCanceledByTheUser(String message) : super(message);
  @override
  String getLocalMessageError(BuildContext context) {
    return context.loc.payPal_flow_was_canceled;
  }
}

class UnexpectedErrorWhileProcessingThePaymentNullNonce extends UserException {
  const UnexpectedErrorWhileProcessingThePaymentNullNonce(String message)
      : super(message);
  @override
  String getLocalMessageError(BuildContext context) {
    return context
        .loc.unexpected_error_while_processing_the_payment_no_nonce_returns;
  }
}

abstract class LocationException extends UserException {
  const LocationException(String message) : super(message);
}

class DisabledLocationServicesException extends LocationException {
  const DisabledLocationServicesException()
      : super('Location services are disabled.');
}

class DeniedLocationPermissionsException extends LocationException {
  const DeniedLocationPermissionsException()
      : super('Location permissions are denied');
}

class PermanentlyDeniedLocationPermissionsException extends LocationException {
  const PermanentlyDeniedLocationPermissionsException()
      : super(
            'Location permissions are permanently denied, we cannot request permissions.');
}
