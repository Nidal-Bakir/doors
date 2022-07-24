import 'dart:developer';

import 'package:doors/core/models/user.dart';
import 'package:doors/core/utils/notification_service.dart';
import 'package:doors/core/utils/permission_checker_service.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

/// ### make sure to initialize the parse server before init the FCM
/// ### make sure to initialize the awesomeNotifications plugin before init the FCM
Future<void> firebaseFCMInit() async {
  final currentUser = await ParseUser.currentUser();
  if (currentUser == null) {
    return;
  }

  if ((currentUser as User).isAnonymousAccount) {
    return;
  }

  final authorizationStatus =
      await PermissionCheckerService.checkPushNotificationPermission();
  if (authorizationStatus == AuthorizationStatus.denied) {
    return;
  }

  final parseInstallation = await ParseInstallation.currentInstallation();

  FirebaseMessaging.instance.onTokenRefresh.listen((token) {
    parseInstallation.deviceToken = token;
    _saveParseInstallation(parseInstallation);
  });

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
}

Future<void> _saveParseInstallation(
  ParseInstallation parseInstallation,
) async {
  ParseResponse parseInstallationResponse;
  while (true) {
    await Future.delayed(const Duration(seconds: 1));
    try {
      parseInstallationResponse = await parseInstallation.create();
      if (parseInstallationResponse.success) {
        break;
      }
    } catch (error) {
      log('can not send installation config to the server retrying in 1 second... \n Error: ' +
          error.toString());
    }
  }
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  final payload = NotificationServicePayload.fromJson(message.data);

  await NotificationService.instance.showNotification(payload);
}
