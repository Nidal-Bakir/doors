import 'package:doors/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

/// ### make sure to initialize the awesomeNotifications plugin before init the firebase
Future<void> firebaseInit() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
