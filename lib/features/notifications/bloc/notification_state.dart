import 'package:gearpizza/features/notifications/models/notification_model.dart';

class NotificationState {
  final List<AppNotification> notifications;

  NotificationState({required this.notifications});

  int get unreadCount => notifications.where((notif) => !notif.read).length;

  factory NotificationState.initial() {
    return NotificationState(notifications: []);
  }

  /// Segno come letta la notifica che ha l'id specificato.
  /// Io itero su tutte le notifiche e, se trovo quella corrispondente,
  /// la copio impostando il flag 'read' a true.
  NotificationState markAsRead(String notificationId) {
    final updatedNotifications = notifications.map((notif) {
      if (notif.id == notificationId) {
        return notif.copyWith(read: true);
      }
      return notif;
    }).toList();

    return NotificationState(notifications: updatedNotifications);
  }

  /// Aggiorno lo stato con una nuova lista di notifiche.
  NotificationState updateNotifications(
      List<AppNotification> newNotifications) {
    return NotificationState(notifications: newNotifications);
  }
}
