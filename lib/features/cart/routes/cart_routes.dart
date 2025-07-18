import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:gearpizza/features/cart/screens/order_resul_screen.dart';
import 'package:gearpizza/features/cart/screens/order_screen.dart';
import 'package:go_router/go_router.dart';

final List<GoRoute> cartRoutes = [
  GoRoute(
    path: 'checkout',
    name: 'checkout',
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        child: OrderScreen(),
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
          // Recupera i parametri passati con extra
          final extra = state.extra as Map<String, dynamic>? ?? {};
          final success = extra['success'] as bool? ?? false;
          final message = extra['message'] as String? ?? '';
          return MaterialPage(
            key: state.pageKey,
            child: OrderResultScreen(
              success: success,
              message: message,
            ),
          );
        },
      ),
    ],
  ),
];
