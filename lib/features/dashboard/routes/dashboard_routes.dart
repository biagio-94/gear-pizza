import 'package:flutter/material.dart';
import 'package:gearpizza/features/dashboard/models/pizza_dto.dart';
import 'package:gearpizza/features/dashboard/screens/pizza_detail_page.dart';
import 'package:gearpizza/features/dashboard/screens/restaurant_page_detail.dart';
import 'package:go_router/go_router.dart';

final List<GoRoute> dashboardRoutes = [
  GoRoute(
    path: ':restaurantId',
    name: 'restaurantDetail',
    builder: (context, state) {
      final id = state.pathParameters['restaurantId']!;
      return RestaurantDetailPage(restaurantId: int.parse(id));
    },
    routes: [
      GoRoute(
        path: 'pizza',
        name: 'pizzaDetail',
        pageBuilder: (context, state) {
          final rId = state.pathParameters['restaurantId']!;
          final pizzaDto = state.extra as PizzaDto;
          return CustomTransitionPage(
            child: PizzaDetailPage(
              restaurantId: rId,
              pizza: pizzaDto,
            ),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              const begin = Offset(0.0, 1.0);
              const end = Offset.zero;
              const curve = Curves.easeOut;
              final tween =
                  Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          );
        },
      ),
    ],
  ),
];
