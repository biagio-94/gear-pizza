import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/features/cart/routes/cart_routes.dart';
import 'package:gearpizza/features/cart/screens/cart_screen.dart';
import 'package:gearpizza/features/profile/routes/profile_routes.dart';
import 'package:gearpizza/features/profile/screeens/profile_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:gearpizza/common/bloc/exception_bloc.dart';
import 'package:gearpizza/common/bloc/exception_state.dart';
import 'package:gearpizza/common/bloc/loading_bloc.dart';
import 'package:gearpizza/common/bloc/loading_state.dart';
import 'package:gearpizza/common/components/custom_bottom_bar.dart';
import 'package:gearpizza/common/components/loading/loading_screen.dart';
import 'package:gearpizza/common/utils/show_error_dialog.dart';
import 'package:gearpizza/common/utils/streams_to_listenable.dart';
import 'package:gearpizza/features/auth/bloc/auth_bloc.dart';
import 'package:gearpizza/features/auth/bloc/auth_event.dart';
import 'package:gearpizza/features/auth/bloc/auth_state.dart';
import 'package:gearpizza/features/auth/routes/auth_routes.dart';
import 'package:gearpizza/features/dashboard/routes/dashboard_routes.dart';
import 'package:gearpizza/features/dashboard/screens/home_screen.dart';

class MainRouter {
  final AuthBloc authBloc;
  final _rootNavigatorKey = GlobalKey<NavigatorState>();
  final _dashboardNavigatorKey = GlobalKey<NavigatorState>();
  final _cartNavigatorKey = GlobalKey<NavigatorState>();
  final _profileNavigatorKey = GlobalKey<NavigatorState>();

  MainRouter({required this.authBloc});

  late final GoRouter router = GoRouter(
    initialLocation: '/login',
    refreshListenable: StreamToListenable([authBloc.stream]),
    redirect: (context, state) {
      final authState = authBloc.state;
      final isAuth = authState is AuthAuthenticated;
      final isRoleChoosen = isAuth && (authState).isRoleChoosen;

      final path = state.uri.path;

      // 1) Se non autenticato, vai sempre a /login (a meno che non sia già in register/reset/otp)
      final onAuthScreens = path == '/login' ||
          path == '/register' ||
          path == '/reset-password' ||
          path == '/otp-verification';
      if (!isAuth && !onAuthScreens) {
        return '/login';
      }

      // 3) Se autenticato e onboarding completato:
      if (isAuth && isRoleChoosen) {
        // Blocca l'accesso alle auth-screens rimandando a /dashboard
        if (onAuthScreens) {
          return '/dashboard';
        }
        // Altrimenti, se chiedo /dashboard, /cart o /profile (o altre pagine interne),
        // lascio che il router gestisca normalmente la navigazione:
        if (path.startsWith('/dashboard') ||
            path.startsWith('/cart') ||
            path.startsWith('/profile')) {
          return null;
        }
        // Se provi a digitare un path non riconosciuto, fallback a /dashboard:
        return '/dashboard';
      }

      return null;
    },
    routes: [
      ...authRoutes,
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => MainScaffold(
          navigationShell: navigationShell,
          navigatorKey: _rootNavigatorKey,
        ),
        branches: [
          // Dashboard branch
          StatefulShellBranch(
            navigatorKey: _dashboardNavigatorKey,
            initialLocation: '/dashboard',
            routes: [
              GoRoute(
                path: '/dashboard',
                builder: (context, state) => HomePage(),
                routes: [
                  ...dashboardRoutes,
                ],
              ),
            ],
          ),
          // Chats branch
          StatefulShellBranch(
            navigatorKey: _cartNavigatorKey,
            initialLocation: '/cart',
            routes: [
              GoRoute(
                  path: '/cart',
                  builder: (context, state) =>
                      Scaffold(body: const CartScreen()),
                  routes: [
                    ...cartRoutes,
                  ]),
            ],
          ),
          // Clients branch
          StatefulShellBranch(
            navigatorKey: _profileNavigatorKey,
            initialLocation: '/profile',
            routes: [
              GoRoute(
                  path: '/profile',
                  builder: (context, state) =>
                      Scaffold(body: const ProfileScreen()),
                  routes: [
                    ...profileRoutes,
                  ]),
            ],
          ),
        ],
      ),
    ],
  );
}

class MainScaffold extends StatefulWidget {
  final StatefulNavigationShell navigationShell;
  final GlobalKey<NavigatorState> navigatorKey;

  const MainScaffold({
    required this.navigationShell,
    required this.navigatorKey,
    super.key,
  });

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold>
    with WidgetsBindingObserver {
  DateTime? _pausedTime;
  final Duration _sessionTimeout = const Duration(minutes: 3);

  int get _currentIndex => widget.navigationShell.currentIndex;
  void _onItemTapped(int index) {
    debugPrint("index: $index");
    widget.navigationShell.goBranch(index);
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.paused) {
      _pausedTime = DateTime.now();
    }
    if (state == AppLifecycleState.resumed) {
      if (_pausedTime != null &&
          DateTime.now().difference(_pausedTime!) > _sessionTimeout) {
        context.read<AuthBloc>().add(AuthLoggedOut());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<LoadingBloc, LoadingState>(
          listener: (context, state) {
            if (state.status == LoadingStatus.loading) {
              LoadingScreen().show(
                context: context,
                text: state.loadingText ?? 'Attendi un attimo',
                showLogoAnimation: true,
              );
            } else {
              LoadingScreen().hide();
            }
          },
        ),
        BlocListener<ExceptionBloc, ExceptionState>(
          listener: (context, state) {
            if (state.message.isNotEmpty) {
              debugPrint("Sto stampando da mainscaffold: ${state.message}");
              showErrorDialog(context, state.message);
            }
          },
        ),
      ],
      child: Scaffold(
        body: widget.navigationShell,
        bottomNavigationBar: CustomBottomBar(
          selectedIndex: _currentIndex,
          onItemTapped: _onItemTapped,
        ),
      ),
    );
  }
}
