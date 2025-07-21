import 'package:gearpizza/features/profile/screeens/account_screen.dart';
import 'package:gearpizza/features/profile/screeens/manage_menu_screen.dart';
import 'package:gearpizza/features/profile/screeens/order_detail_screen.dart';
import 'package:gearpizza/features/profile/screeens/orders_screen.dart';
import 'package:go_router/go_router.dart';

final List<GoRoute> profileRoutes = [
  GoRoute(
    path: 'account',
    builder: (context, state) => const AccountScreen(),
  ),
  GoRoute(
      path: 'orders',
      builder: (context, state) => const OrdersScreen(),
      routes: [
        GoRoute(
          path: ':id',
          name: 'order-detail',
          builder: (context, state) {
            final id = state.pathParameters['id']!;
            return OrderDetailScreen(orderId: id);
          },
        ),
      ]),
  GoRoute(
    path: 'manage-menu/:restaurantId',
    builder: (context, state) {
      // qui leggi il parametro
      final id = int.parse(state.pathParameters['restaurantId']!);
      return ManageMenuScreen(restaurantId: id);
    },
  ),
];
