import 'package:doors/injection_container/auth_injection.dart';
import 'package:doors/injection_container/favorite_posts_injection.dart';
import 'package:doors/injection_container/manage_post_injection.dart';
import 'package:doors/injection_container/post_injection.dart';
import 'package:doors/injection_container/recent_posts_injection.dart';
import 'package:doors/injection_container/search_injection.dart';
import 'package:doors/injection_container/subscription_injection.dart';
import 'package:doors/injection_container/parse_init.dart';
import 'package:doors/injection_container/security_error_flow_injection.dart';
import 'package:doors/injection_container/user_location_injection.dart';
import 'package:doors/injection_container/user_posts_injection.dart';
import 'package:doors/injection_container/user_profile_injection.dart';

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

  // post init
  postInit();

  // favorite posts init
  favoritePostsInit();

  // manage post init
  managePostInit();

  // user location init
  userLocationInit();

  // search init
  searchInit();

  // user posts init
  userPostsInit();

  // user profile init
  userProfileInit();
}
