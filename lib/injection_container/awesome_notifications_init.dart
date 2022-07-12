import 'package:doors/core/utils/notification_service.dart';

Future<bool> awesomeNotificationsInit() async {
  return NotificationService.instance.initialize();
}
