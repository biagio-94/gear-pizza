import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gearpizza/features/dashboard/screens/quote_detail_screen.dart';
import 'package:gearpizza/features/notifications/screens/notification_page.dart';
import 'package:gearpizza/features/profile/screens/dealer_details_screen.dart';
import '../../../common/model/preventivo_elenco_item.dart';

final List<GoRoute> dashboardRoutes = [
  GoRoute(
    path: 'dettaglioPreventivo',
    builder: (context, state) {
      final preventivo = state.extra as PreventivoElencoItem;
      return QuoteDetailScreen(preventivo: preventivo);
    },
  ),
  GoRoute(
    path: 'notifications',
    builder: (context, state) {
      return NotificationPage();
    },
  ),
  GoRoute(
    path: 'profile',
    pageBuilder: (context, state) => CustomTransitionPage(
      key: state.pageKey,
      child: const DealerDetailsScreen(), // Il tuo widget profilo
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final slide = Tween<Offset>(
          begin: const Offset(1.0, 0.1), // da destra e leggermente in alto
          end: Offset.zero,
        ).animate(CurvedAnimation(
          parent: animation,
          curve: Curves.easeOutBack,
        ));

        final fade = CurvedAnimation(
          parent: animation,
          curve: Curves.easeIn,
        );

        return SlideTransition(
          position: slide,
          child: FadeTransition(
            opacity: fade,
            child: child,
          ),
        );
      },
    ),
  ),
];
