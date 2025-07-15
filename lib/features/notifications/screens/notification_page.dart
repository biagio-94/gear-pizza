import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/common/styles/text_styles.dart';
import 'package:gearpizza/features/notifications/bloc/notification_bloc.dart';
import 'package:gearpizza/features/notifications/bloc/notification_event.dart';
import 'package:gearpizza/features/notifications/bloc/notification_state.dart';
import 'package:gearpizza/features/notifications/components/notification_tile.dart';
import 'package:gearpizza/src/generated/l10n/app_localizations.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  void initState() {
    super.initState();
    context.read<NotificationBloc>().add(InitializeNotificationsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<NotificationBloc, NotificationState>(
        builder: (context, state) {
          final notifications = state.notifications;

          if (notifications.isEmpty) {
            return Center(
              child: Text(
                AppLocalizations.of(context)!.noNotifications,
                style: AppTextStyles.mediumBlueText(context),
              ),
            );
          }

          final sortedNotifications = [...notifications]..sort((a, b) {
              if (a.read != b.read) {
                return a.read ? 1 : -1;
              }
              return b.timestamp.compareTo(a.timestamp);
            });

          final Map<DateTime, List> groupedNotifications = {};
          for (var notif in sortedNotifications) {
            final dateKey = DateTime(
              notif.timestamp.year,
              notif.timestamp.month,
              notif.timestamp.day,
            );
            groupedNotifications.putIfAbsent(dateKey, () => []);
            groupedNotifications[dateKey]!.add(notif);
          }

          final sortedDates = groupedNotifications.keys.toList()
            ..sort((a, b) => b.compareTo(a));

          return SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 30.0, left: 16.0, right: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  Text(
                    "NOTIFICHE",
                    style: AppTextStyles.blueTextPageTitleStyle(context),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Qui tieni traccia dello stato d'avanzamento delle tue pratiche.",
                    style: AppTextStyles.descriptionPageStyle(context),
                  ),
                  const SizedBox(height: 32),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: sortedDates.length,
                    itemBuilder: (context, dateIndex) {
                      final date = sortedDates[dateIndex];
                      final dateNotifications = groupedNotifications[date]!;

                      final formattedDate = MaterialLocalizations.of(context)
                          .formatMediumDate(date);

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            formattedDate,
                            style: AppTextStyles.smallDescriptionStyle(context),
                          ),
                          const SizedBox(height: 8),
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: dateNotifications.length,
                            itemBuilder: (context, notifIndex) {
                              final notification =
                                  dateNotifications[notifIndex];
                              return NotificationTile(
                                notification: notification,
                                onMarkAsRead: () {
                                  context.read<NotificationBloc>().add(
                                        MarkAsReadEvent(notification.id),
                                      );
                                },
                              );
                            },
                          ),
                          const SizedBox(height: 16),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
