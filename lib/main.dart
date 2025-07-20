import 'dart:ui';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/features/cart/bloc/cart_bloc.dart';
import 'package:gearpizza/features/cart/services/cart_service.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_bloc.dart';
import 'package:gearpizza/features/dashboard/bloc/product_card/product_card_bloc.dart';
import 'package:gearpizza/features/dashboard/services/dashboard_service.dart';
import 'package:gearpizza/features/profile/bloc/orders_bloc.dart';
import 'package:gearpizza/features/profile/bloc/user_account_bloc.dart';
import 'package:gearpizza/features/profile/services/user_service.dart';
import 'package:gearpizza/l10n/app_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:gearpizza/common/bloc/exception_bloc.dart';
import 'package:gearpizza/common/bloc/loading_bloc.dart';
import 'package:gearpizza/common/bloc/theme_bloc.dart';
import 'package:gearpizza/common/services/secure_storage_service.dart';
import 'package:gearpizza/common/styles/themes.dart';
import 'package:gearpizza/common/utils/get_device_id.dart';
import 'package:gearpizza/common/utils/services_setup.dart';
import 'package:gearpizza/features/auth/bloc/auth_bloc.dart';
import 'package:gearpizza/features/auth/bloc/auth_event.dart';
import 'package:gearpizza/features/auth/services/auth_service.dart';
import 'package:gearpizza/router/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await setupServiceLocator();

  final bool isPhysical = await isPhysicalDevice();

  // Abilita o disabilita la raccolta dei crash report in base al tipo di dispositivo
  await FirebaseCrashlytics.instance
      .setCrashlyticsCollectionEnabled(isPhysical);

  if (isPhysical) {
    // Registra gli errori Flutter non gestiti
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

    // Registra gli errori Dart non gestiti
    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeCubit(
            GetIt.instance<SecureStorageService>(),
          ),
        ),
        BlocProvider(
          create: (_) => AuthBloc(authService: GetIt.I<AuthService>())
            ..add(const AuthStarted()),
        ),
        BlocProvider(
          create: (context) => GetIt.instance<LoadingBloc>(),
        ),
        BlocProvider(
          create: (context) => GetIt.instance<ExceptionBloc>(),
        ),
        BlocProvider(
          create: (context) => ProductCardBloc(),
        ),
        BlocProvider(
          create: (context) =>
              CartBloc(GetIt.I<DashboardService>(), GetIt.I<CartService>()),
        ),
        BlocProvider(
          create: (context) => UserAccountBloc(GetIt.I<UserService>()),
        ),
        BlocProvider(
          create: (context) => OrdersBloc(GetIt.I<UserService>()),
        ),
        BlocProvider(
            create: (context) => DashboardBloc(
                  GetIt.I<DashboardService>(),
                )),
      ],
      child: Builder(
        builder: (context) {
          final authBloc = context.read<AuthBloc>();
          final router = MainRouter(
            authBloc: authBloc,
          ).router;

          return BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              final isLight = state is LightThemeState;

              return MaterialApp.router(
                theme: isLight ? lightTheme : darkTheme,
                routeInformationProvider: router.routeInformationProvider,
                routeInformationParser: router.routeInformationParser,
                routerDelegate: router.routerDelegate,
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                supportedLocales: AppLocalizations.supportedLocales,
                debugShowCheckedModeBanner: false,
                builder: (context, child) {
                  final cs = Theme.of(context).colorScheme;
                  SystemChrome.setSystemUIOverlayStyle(
                    SystemUiOverlayStyle(
                      statusBarColor: cs.surface,
                      statusBarIconBrightness:
                          isLight ? Brightness.dark : Brightness.light,
                      systemNavigationBarColor: cs.surface,
                      systemNavigationBarIconBrightness:
                          isLight ? Brightness.dark : Brightness.light,
                    ),
                  );

                  return child!;
                },
              );
            },
          );
        },
      ),
    );
  }
}
