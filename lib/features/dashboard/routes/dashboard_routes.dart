import 'package:gearpizza/features/dashboard/screens/pizza_detail_page.dart';
import 'package:gearpizza/features/dashboard/screens/restaurant_page_detail.dart';
import 'package:go_router/go_router.dart';

final List<GoRoute> dashboardRoutes = [
  GoRoute(
    path: ':restaurantId',
    name: 'restaurantDetail',
    builder: (context, state) {
      final id = state.pathParameters['restaurantId']!;
      return RestaurantDetailPage(restaurantId: int.tryParse(id) ?? 3);
    },
    routes: [
      GoRoute(
        path: 'pizza/:pizzaId',
        name: 'pizzaDetail',
        builder: (context, state) {
          final rId = state.pathParameters['restaurantId']!;
          final pId = state.pathParameters['pizzaId']!;
          return PizzaDetailPage(
            restaurantId: rId,
            pizzaId: pId,
          );
        },
      ),
    ],
  ),
];
