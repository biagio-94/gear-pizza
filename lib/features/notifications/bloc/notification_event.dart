import 'package:gearpizza/features/notifications/models/notification_model.dart';

abstract class NotificationEvent {}

class UpdateNotifications extends NotificationEvent {
  final List<AppNotification> notifications;

  UpdateNotifications(this.notifications);
}

class InitializeNotificationsEvent extends NotificationEvent {
  InitializeNotificationsEvent();
}

class MarkAsReadEvent extends NotificationEvent {
  final String notificationId;

  MarkAsReadEvent(this.notificationId);
}
