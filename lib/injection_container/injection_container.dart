import 'package:doors/injection_container/auth_injection.dart';
import 'package:doors/injection_container/awesome_notifications_init.dart';
import 'package:doors/injection_container/block_injection.dart';
import 'package:doors/injection_container/chat_injection.dart';
import 'package:doors/injection_container/favorite_posts_injection.dart';
import 'package:doors/injection_container/file_manager.dart';
import 'package:doors/injection_container/firebase_fcm_init.dart';
import 'package:doors/injection_container/firebase_init.dart';
import 'package:doors/injection_container/manage_post_injection.dart';
import 'package:doors/injection_container/post_injection.dart';
import 'package:doors/injection_container/recent_posts_injection.dart';
import 'package:doors/injection_container/resume_creator_injection.dart';
import 'package:doors/injection_container/search_injection.dart';
import 'package:doors/injection_container/settings_injection.dart';
import 'package:doors/injection_container/send_job_application.dart';
import 'package:doors/injection_container/subscription_injection.dart';
import 'package:doors/injection_container/parse_init.dart';
import 'package:doors/injection_container/security_error_flow_injection.dart';
import 'package:doors/injection_container/user_location_injection.dart';
import 'package:doors/injection_container/user_posts_injection.dart';
import 'package:doors/injection_container/user_profile_injection.dart';
import 'package:doors/injection_container/view_post_job_applications_injection.dart';

/*
  The order and awaiting when calling some of the injections or initializations
  are important for the app to work properly.


  1) awesomeNotificationsInit: should be the first thing because its create the 
    notification channel the firebase depend on to send push notifications in 
    foreground

  2) firebaseInit: 

  3) parseInit: some features should not be initialized because the current user 
    is a AnonymousAccount so we do not initialize those features at all:
      * chat 
      * push notifications 
    so it is important to init the parse server before initializing any of those 
    features.
  
  any initialization or injection depend on some other initialization or injection
  will be documented 

*/
Future<void> init({bool forRestart = false}) async {
  // no need to reInit the parse server, firebase or awesomeNotifications when rebuild the widget tree.
  if (!forRestart) {
    // init the awesome Notifications plugin with NotificationChannel
    await awesomeNotificationsInit();

    // init firebase
    await firebaseInit();

    // parse init
    await parseInit();
  }

  // auth init
  authInit();

  // init firebase cloud messaging for push notifications
  firebaseFCMInit();

  // init chat
  chatInit();

  // user block init
  blockInit();

  // security error flow
  securityErrorFlowInit();

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

  // file manager init
  fileManagerInit();

  // send job application init
  sendJobApplicationInit();

  // view post job applications init
  viewPostJobApplicationsInit();

  // resume creator init
  resumeCreatorInit();

  // inti app settings
  await settingsInit();
}
