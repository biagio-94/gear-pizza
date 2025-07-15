import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:gearpizza/common/styles/text_styles.dart';
import 'package:gearpizza/features/notifications/models/notification_model.dart';
import '../../../common/styles/font_sizes.dart';

class NotificationTile extends StatelessWidget {
  final AppNotification notification;
  final VoidCallback onMarkAsRead;

  const NotificationTile({
    super.key,
    required this.notification,
    required this.onMarkAsRead,
  });

  @override
  Widget build(BuildContext context) {
    final formattedDate =
        DateFormat('dd MMM yyyy, HH:mm').format(notification.timestamp);
    final colorScheme = Theme.of(context).colorScheme;

    final bool isRead = notification.read;
    final Color tileColor =
        isRead ? colorScheme.onPrimary : colorScheme.secondary;
    final Color iconBackground =
        isRead ? colorScheme.surface : colorScheme.primary;
    final Color iconColor = colorScheme.onPrimary;

    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            elevation: 10,
            shadowColor: colorScheme.secondary,
            color: tileColor,
            child: ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 17.0),
              leading: CircleAvatar(
                backgroundColor: iconBackground,
                child: Icon(
                  isRead
                      ? Icons.mark_email_read_outlined
                      : Icons.mark_email_unread_outlined,
                  color: iconColor,
                ),
              ),
              title: Text(
                notification.title,
                style: TextStyle(
                  fontWeight: isRead ? FontWeight.normal : FontWeight.bold,
                  fontSize: AppFontSizes.bodyText,
                  color: colorScheme.onSurface,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notification.body,
                    style: TextStyle(color: colorScheme.onSurface),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    formattedDate,
                    style: AppTextStyles.smallDescriptionStyle(context),
                  ),
                ],
              ),
              onTap: () {
                if (!isRead) {
                  onMarkAsRead();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
