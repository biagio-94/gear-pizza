import 'package:gearpizza/features/profile/screeens/account_screen.dart';
import 'package:gearpizza/features/profile/screeens/manage_menu_screen.dart';
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
  ),
  GoRoute(
    path: 'manage-menu',
    builder: (context, state) => const ManageMenuScreen(),
  ),
];
