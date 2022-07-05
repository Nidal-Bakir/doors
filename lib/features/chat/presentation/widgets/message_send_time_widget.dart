import 'package:doors/features/chat/util/util_func_for_chat.dart';
import 'package:flutter/material.dart';

class MessageSendTimeWidget extends StatelessWidget {
  final DateTime messageSendDateTime;
  const MessageSendTimeWidget({Key? key, required this.messageSendDateTime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      getMessageSendTime(messageSendDateTime),
      style: Theme.of(context).textTheme.bodyText1,
    );
  }
}
