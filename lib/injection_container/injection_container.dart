import 'package:doors/injection_container/auth_injection.dart';
import 'package:doors/injection_container/parse_init.dart';

Future<void> init({bool forRestart = false}) async {
  // no need to reInit the parse server when rebuild the widget tree.
  if (!forRestart) {
    // parse init
    await parseInit();
  }
  // auth init
  authInit();
}
