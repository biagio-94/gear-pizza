import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gearpizza/common/bloc/exception_bloc.dart';
import 'package:gearpizza/common/bloc/exception_state.dart';
import 'package:gearpizza/common/bloc/loading_bloc.dart';
import 'package:gearpizza/common/bloc/loading_state.dart';
import 'package:gearpizza/common/components/custom_bottom_bar.dart';
import 'package:gearpizza/common/components/custom_rounded_container.dart';
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
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  MainRouter({required this.authBloc});

  late final GoRouter router = GoRouter(
    initialLocation: '/login',
    refreshListenable: StreamToListenable([authBloc.stream]),
    redirect: (context, state) {
      final authState = authBloc.state;

      final bool isAuth = authState is AuthAuthenticated;
      final bool isGoToResetpass = authState is AuthResetPasswordState ||
          authState is AuthPasswordResetEmailSent;
      final bool isGoToRegister = authState is AuthRegisterState ||
          authState is AuthEmailVerificationSent;

      final bool goingToLogin = state.uri.path == '/login' ||
          state.uri.path == '/register' ||
          state.uri.path == '/reset-password';

      // 🔒 Se non autenticato e non su login, reindirizza a login

      // 🔒 Proteggi schermate per utenti autenticati
      if (isGoToRegister) return '/register';
      if (isGoToResetpass) return '/reset-password';

      // 🔁 Se non autenticato e non già su login, torna a login
      if ((!isAuth && !goingToLogin) || authState is AuthUnauthenticated) {
        return '/login';
      }

      // ✅ Se autenticato, controlla se ha completato l'onboarding
      if (authState is AuthAuthenticated) {
        final isRoleChoosen = authState.isRoleChoosen;

        if (!isRoleChoosen) {
          return '/chooseRole';
        }
        if (isRoleChoosen) {
          return '/dashboard';
        }
        return null;
      }

      return null;
    },
    routes: [
      ...authRoutes,
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => MainScaffold(
          navigationShell: navigationShell,
          navigatorKey: navigatorKey,
        ),
        branches: [
          // Dashboard branch
          StatefulShellBranch(
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
            routes: [
              GoRoute(
                path: '/cart',
                builder: (context, state) => const Center(),
              ),
            ],
          ),
          // Clients branch
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile',
                builder: (context, state) => const Center(),
              ),
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
        body: CustomRoundedContainer(
          child: widget.navigationShell,
        ),
        bottomNavigationBar: CustomBottomBar(
          selectedIndex: _currentIndex,
          onItemTapped: _onItemTapped,
        ),
      ),
    );
  }
}
