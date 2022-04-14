import 'package:doors/injection_container/auth_injection.dart';
import 'package:doors/injection_container/recent_posts_injection.dart';
import 'package:doors/injection_container/subscription_injection.dart';
import 'package:doors/injection_container/parse_init.dart';
import 'package:doors/injection_container/security_error_flow_injection.dart';

Future<void> init({bool forRestart = false}) async {
  // no need to reInit the parse server when rebuild the widget tree.
  if (!forRestart) {
    // parse init
    await parseInit();
  }
  // security error flow
  securityErrorFlowInit();

  // auth init
  authInit();

  // offered subscription plans
  subscriptionInit();

  // recent posts init
  recentPostsInit();
}
