import 'package:intl/intl.dart';

String getMessageSendTime(DateTime sendDate) {
  return DateFormat('kk:mm a').format(sendDate.toLocal());
}
