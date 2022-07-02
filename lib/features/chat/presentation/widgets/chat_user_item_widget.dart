import 'dart:async';

import 'package:badges/badges.dart';
import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/widgets/circular_profile_image.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/chat_user_info.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:doors/features/chat/presentation/managers/chat_users_bloc/chat_users_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ChatUserItemWidget extends StatefulWidget {
  final ChatUserInfo chatUserInfo;
  const ChatUserItemWidget({
    Key? key,
    required this.chatUserInfo,
  }) : super(key: key);

  @override
  State<ChatUserItemWidget> createState() => _ChatUserItemWidgetState();
}

class _ChatUserItemWidgetState extends State<ChatUserItemWidget> {
  late final ChatUserInfo chatUserInfo;
  @override
  void initState() {
    super.initState();
    chatUserInfo = widget.chatUserInfo;
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return ListTile(
      onTap: () {
        context.read<ChatUsersBloc>().add(
              ChatUsersUnreadMessagesCountRested(chatUserInfo.userId),
            );
      },
      dense: false,
      enableFeedback: true,
      leading: CircularProfileImage(
        fileImage: chatUserInfo.profileImage?.file,
        url: chatUserInfo.profileImage?.mediaUrl,
      ),
      title: Text(
        chatUserInfo.name,
        style: _theme.textTheme.subtitle1?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        _extractLatestMessage(chatUserInfo.latestMessage, context),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            _extractFormattedDateTimeFromMessageSendDate(
                chatUserInfo.latestMessage?.sentDate, context),
          ),
          Badge(
            padding: const EdgeInsetsDirectional.all(5.0),
            animationType: BadgeAnimationType.fade,
            animationDuration: const Duration(milliseconds: 300),
            badgeColor: _theme.colorScheme.primary,
            showBadge: chatUserInfo.unReadCount != 0,
            toAnimate: false,
            badgeContent: Text(
              (chatUserInfo.unReadCount > 999 ? 999 : chatUserInfo.unReadCount)
                  .toString(),
            ),
          ),
        ],
      ),
    );
  }

  Timer? _sendedMessageDateTimeTimer;
  String _extractFormattedDateTimeFromMessageSendDate(
      DateTime? sendDate, BuildContext context) {
    if (sendDate == null) {
      return '';
    }
    final formattedDateTime = _getFormattedSendDateTime(sendDate, context);

    if (formattedDateTime == context.loc.just_now) {
      // So the "just now" will be changed to real time like 10:23 AM
      _sendedMessageDateTimeTimer = Timer(const Duration(minutes: 2), () {
        if (mounted) {
          setState(() {});
        }
      });
    }

    return formattedDateTime;
  }

  String _extractLatestMessage(
      LocalChatMessage? message, BuildContext context) {
    if (message == null) {
      return '';
    }
    if (message.messageType == MessageType.text.name) {
      return message.textMessage!;
    }
    if (message.messageType == MessageType.image.name) {
      return context.loc.photo;
    }
    return context.loc.unsupported_message_type;
  }

  /// Will returns Formatted dateTime after converting the [dateTime] param to
  /// localized time zone for this device.
  String _getFormattedSendDateTime(DateTime dateTime, BuildContext context) {
    final localizedDateTime = dateTime.toLocal();
    final timeDiff = localizedDateTime.difference(DateTime.now());

    if (timeDiff.inMinutes <= 2) {
      return context.loc.just_now;
    }
    if (timeDiff.inHours <= 24) {
      return DateFormat('k:m a').format(localizedDateTime);
    }

    if (timeDiff.inDays <= 7) {
      return DateFormat('EEE k:m a').format(localizedDateTime);
    }

    if (timeDiff.inDays <= 30) {
      return DateFormat('d k:m a').format(localizedDateTime);
    }

    if (timeDiff.inDays <= 365) {
      return DateFormat('MMM d').format(localizedDateTime);
    }

    return DateFormat('yyyy MMM d').format(localizedDateTime);
  }

  @override
  void dispose() {
    _sendedMessageDateTimeTimer?.cancel();
    super.dispose();
  }
}
