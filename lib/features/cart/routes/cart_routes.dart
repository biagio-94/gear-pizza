import 'package:flutter/material.dart';
import 'package:gearpizza/features/cart/screens/order_completed.dart';
import 'package:gearpizza/features/cart/screens/create_order_screen.dart';
import 'package:go_router/go_router.dart';

final List<GoRoute> cartRoutes = [
  GoRoute(
    path: 'checkout',
    name: 'checkout',
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        child: CreateorderScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
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
    routes: [
      GoRoute(
        path: 'result',
        name: 'checkout_result',
        pageBuilder: (context, state) {
          return MaterialPage(
            key: state.pageKey,
            child: OrderCompleteted(),
          );
        },
      ),
    ],
  ),
];
