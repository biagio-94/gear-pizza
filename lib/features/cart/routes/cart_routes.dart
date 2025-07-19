import 'package:flutter/widgets.dart';
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
    routes: [],
  ),
];
