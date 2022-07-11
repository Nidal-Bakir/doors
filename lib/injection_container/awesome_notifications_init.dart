import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:doors/core/config/constants.dart';
import 'package:flutter/material.dart';

Future<void> awesomeNotificationsInit() async {
  await AwesomeNotifications().initialize(
    null,
    [
      NotificationChannel(
        channelKey: Constants.chatNotificationChannelKey,
        channelName: 'chat notifications',
        channelDescription: 'Notification channel for chat',
        defaultColor: Colors.white,
        ledColor: Colors.white,
        enableLights: true,
        importance: NotificationImportance.Max,
        locked: false,
        defaultPrivacy: NotificationPrivacy.Public,
        playSound: true,
        channelShowBadge: true,
        defaultRingtoneType: DefaultRingtoneType.Notification,
        enableVibration: true,
      )
    ],
    debug: true,
  );

  AwesomeNotifications().setListeners(
    onActionReceivedMethod: NotificationController.onActionReceivedMethod,
    onNotificationCreatedMethod:
        NotificationController.onNotificationCreatedMethod,
    onNotificationDisplayedMethod:
        NotificationController.onNotificationDisplayedMethod,
    onDismissActionReceivedMethod:
        NotificationController.onDismissActionReceivedMethod,
  );
}

class NotificationController {
  /// Use this method to detect when a new notification or a schedule is created
  static Future<void> onNotificationCreatedMethod(
      ReceivedNotification receivedNotification) async {
    // Your code goes here
  }

  /// Use this method to detect every time that a new notification is displayed
  static Future<void> onNotificationDisplayedMethod(
      ReceivedNotification receivedNotification) async {
    // Your code goes here
  }

  /// Use this method to detect if the user dismissed a notification
  static Future<void> onDismissActionReceivedMethod(
      ReceivedAction receivedAction) async {
    // Your code goes here
  }

  /// Use this method to detect when the user taps on a notification or action button
  static Future<void> onActionReceivedMethod(
      ReceivedAction receivedAction) async {
    // Your code goes here

    // Navigate into pages, avoiding to open the notification details page over another details page already opened

    // App.navigatorKey.currentState?.pushNamedAndRemoveUntil(
    //   '/notification-page',
    //   (route) => (route.settings.name != '/notification-page') || route.isFirst,
    //   arguments: receivedAction,
    // );
  }
}
