import 'package:intl/intl.dart';

String getMessageSendTime(DateTime sendDate) {
  return DateFormat('k:m a').format(sendDate.toLocal());
}
