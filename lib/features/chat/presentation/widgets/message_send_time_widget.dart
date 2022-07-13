import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MessageSendTimeWidget extends StatelessWidget {
  final DateTime messageSendDateTime;
  const MessageSendTimeWidget({Key? key, required this.messageSendDateTime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      _getMessageSendTime(messageSendDateTime, context),
      style: Theme.of(context).textTheme.bodyText1,
    );
  }

  String _getMessageSendTime(DateTime sendDate, BuildContext context) {
    final languageTag = Localizations.maybeLocaleOf(context)?.toLanguageTag();
    return DateFormat('h:m a', languageTag).format(sendDate.toLocal());
  }
}
