import 'package:gearpizza/features/profile/models/create_or_update_product.dart';
import 'package:gearpizza/features/profile/screeens/account_screen.dart';
import 'package:gearpizza/features/profile/screeens/manage_menu_screen.dart';
import 'package:gearpizza/features/profile/screeens/order_detail_screen.dart';
import 'package:gearpizza/features/profile/screeens/orders_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:gearpizza/features/dashboard/models/pizza_dto.dart';

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
    ],
  ),
  GoRoute(
    path: 'manage-menu/:restaurantId',
    builder: (context, state) {
      final id = int.parse(state.pathParameters['restaurantId']!);
      return ManageMenuScreen(restaurantId: id);
    },
    routes: [
      GoRoute(
        path: 'edit-pizza',
        name: 'edit-pizza',
        builder: (context, state) {
          final id = int.parse(state.pathParameters['restaurantId']!);

          // se serve passare una pizza già esistente in modifica, puoi usare extra:
          final pizza = state.extra as PizzaDto?;

          return CreateUpdatePizzaScreen(
            initial: pizza,
            restaurantId: id,
          );
        },
      ),
    ],
  ),
];
