import 'package:go_router/go_router.dart';
import 'package:gearpizza/features/auth/screens/login_screen.dart';
import 'package:gearpizza/features/auth/screens/register_screen.dart';

final List<GoRoute> authRoutes = [
  GoRoute(
    path: '/login',
    pageBuilder: (context, state) {
      return const NoTransitionPage(
        child: LoginScreen(),
      );
    },
  ),
  GoRoute(
    path: '/register',
    pageBuilder: (context, state) {
      return const NoTransitionPage(
        child: RegisterScreen(),
      );
    },
  ),
];
