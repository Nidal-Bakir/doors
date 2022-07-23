import 'dart:math';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:doors/app/app.dart';
import 'package:doors/core/config/constants.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/chat_user_info.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/media_file.dart';
import 'package:doors/features/chat/presentation/screens/chat_screen.dart';
import 'package:doors/features/chat/presentation/screens/chat_users_screen.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class NotificationServicePayload extends Equatable {
  final String senderName;
  final String textMessage;
  final String senderId;
  final String? profileImageUrl;

  const NotificationServicePayload({
    required this.senderName,
    required this.textMessage,
    required this.senderId,
    required this.profileImageUrl,
  });
  factory NotificationServicePayload.fromJson(Map<String, dynamic> jsonMap) {
    return NotificationServicePayload(
      senderId: jsonMap['senderId'],
      senderName: jsonMap['senderName'],
      textMessage: jsonMap['textMessage'],
      profileImageUrl: jsonMap['profileImageUrl'],
    );
  }
  Map<String, String?> toJson() => {
        "senderId": senderId,
        "senderName": senderName,
        "textMessage": textMessage,
        "profileImageUrl": profileImageUrl,
      };

  @override
  List<Object?> get props => [
        senderId,
        senderName,
        textMessage,
        profileImageUrl,
      ];
}

class NotificationService {
  static NotificationService? _instance;
  NotificationService._();

  static NotificationService get instance {
    return _instance ??= NotificationService._();
  }

  static Future<void> onActionReceivedMethod(
    ReceivedAction receivedAction,
  ) async {
    final currentUser = (await ParseUser.currentUser()) as User?;
    if (currentUser == null || (currentUser.isAnonymousAccount)) {
      return;
    }

    if (!currentUser.isEmailVerified!) {
      final homeScaffoldContext = getHomeScaffoldGlobalKey().currentContext;
      if (homeScaffoldContext != null) {
        showErrorSnackBar(
          homeScaffoldContext,
          homeScaffoldContext.loc.please_verify_your_email_first,
        );
      }
      return;
    }

    final payload = receivedAction.payload;
    if (payload == null) {
      return;
    }

    final notificationPayload = NotificationServicePayload.fromJson(payload);
    final chatUserFromNotification = ChatUserInfo(
      userId: notificationPayload.senderId,
      name: notificationPayload.senderName,
      profileImage: MediaFile(
        file: null,
        mediaUrl: notificationPayload.profileImageUrl,
      ),
    );

    bool _isRouteNameIsCurrent(String routeName) =>
        App.navigatorKey.currentState?.isCurrent(routeName) ?? false;

    if (_isRouteNameIsCurrent(ChatScreen.routeName)) {
      App.navigatorKey.currentState?.pushReplacementNamed(
        ChatScreen.routeName,
        arguments: chatUserFromNotification,
      );
    } else if (_isRouteNameIsCurrent(ChatUsersScreen.routeName)) {
      App.navigatorKey.currentState?.pushNamed(
        ChatScreen.routeName,
        arguments: chatUserFromNotification,
      );
    } else {
      App.navigatorKey.currentState?.pushNamedAndRemoveUntil(
        ChatScreen.routeName,
        (route) => route.isFirst,
        arguments: chatUserFromNotification,
      );
    }
  }

  Future<bool> setListeners() {
    return AwesomeNotifications().setListeners(
      onActionReceivedMethod: NotificationService.onActionReceivedMethod,
    );
  }

  Future<bool> initialize() async {
    return await AwesomeNotifications().initialize(
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
      // TODO: remove th dubug : true
      debug: true,
    );
  }

  Future<void> cancelAll() {
    return AwesomeNotifications().cancelAll();
  }

  Future<void> setGlobalBadgeCounter(int? amount) {
    return AwesomeNotifications().setGlobalBadgeCounter(amount);
  }

  Future<void> cancelNotificationsByGroupKey(String groupKey) {
    return AwesomeNotifications().cancelNotificationsByGroupKey(groupKey);
  }

  Future<bool> showNotification(
    NotificationServicePayload payload,
  ) {
    return AwesomeNotifications().createNotification(
      content: NotificationContent(
        channelKey: Constants.chatNotificationChannelKey,
        id: Random().nextInt(999999),
        summary: 'Chat',
        title: payload.senderName,
        body: payload.textMessage,
        wakeUpScreen: true,
        payload: payload.toJson(),
        groupKey: payload.senderId,
        category: NotificationCategory.Message,
        displayOnBackground: true,
        notificationLayout: NotificationLayout.Messaging,
        displayOnForeground: true,
        showWhen: true,
        actionType: ActionType.Default,
      ),
    );
  }
}
