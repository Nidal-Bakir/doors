import 'package:doors/injection_container/auth_injection.dart';
import 'package:doors/injection_container/parse_init.dart';

Future<void> init() async {
  // parse init
  await parseInit();

  // auth init
  authInit();
}
