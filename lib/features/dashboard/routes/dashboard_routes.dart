import 'package:go_router/go_router.dart';
import 'package:gearpizza/features/notifications/screens/notification_page.dart';

final List<GoRoute> dashboardRoutes = [
  GoRoute(
    path: 'notifications',
    builder: (context, state) {
      return NotificationPage();
    },
  ),
];
