import 'dart:developer';
import 'dart:math' show Random;

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:doors/core/config/constants.dart';
import 'package:doors/core/models/user.dart';
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

  final deviceToken = await FirebaseMessaging.instance.getToken();

  if (parseInstallation.deviceToken != deviceToken) {
    parseInstallation.deviceToken = deviceToken;
    _saveParseInstallation(parseInstallation);
  }

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
    try {
      parseInstallationResponse = await parseInstallation.create();
      if (parseInstallationResponse.success) {
        break;
      }
    } catch (error) {
      log('can not send installation config to the server retrying in 1 second... \n Error: ' +
          error.toString());
    }
    await Future.delayed(const Duration(seconds: 1));
  }
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // TODO : sync with server; OR update the number of unread messages in sheardPrefrence
  // TODO : show awsom notification

  final senderName = message.data['senderName'];
  final textMessage = message.data['textMessage'];
  final senderId = message.data['senderId'];

  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      channelKey: Constants.chatNotificationChannelKey,
      id: Random().nextInt(999999),
      summary: 'Chat',
      title: senderName,
      body: textMessage,
      groupKey: senderId,
      category: NotificationCategory.Message,
      displayOnBackground: true,
      notificationLayout: NotificationLayout.Messaging,
      displayOnForeground: true,
      showWhen: true,
      actionType: ActionType.Default,
    ),
  );

  print("Handling a background message: ${message.data}");
}
