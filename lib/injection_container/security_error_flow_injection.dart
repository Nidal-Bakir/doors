import 'package:doors/core/errors/security_exception_flow.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.I;
void securityErrorFlowInit() {
  di.registerLazySingleton<SecurityExceptionFlow>(() => SecurityExceptionFlow());
}
