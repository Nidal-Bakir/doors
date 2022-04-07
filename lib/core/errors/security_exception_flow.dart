import 'dart:async';

import 'package:doors/core/errors/exception_base.dart';

/// Responsible of adding/broadcasting a security related errors
class SecurityExceptionFlow {
  final _securityExceptionFlowStreamController =
      StreamController<SecurityException>.broadcast();
      
  Stream<SecurityException> securityErrorFlowStream() {
    return _securityExceptionFlowStreamController.stream;
  }

  void riseSecurityException(SecurityException securityError) {
    _securityExceptionFlowStreamController.sink.add(securityError);
  }
}