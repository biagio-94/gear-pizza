import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:gearpizza/features/auth/services/superbase_auth_service.dart';
import 'package:gearpizza/features/onboarding/repository/onboarding_repository.dart';
import 'package:gearpizza/features/onboarding/service/onboarding_service.dart';
import 'package:local_auth/local_auth.dart';
import 'package:gearpizza/common/bloc/exception_bloc.dart';
import 'package:gearpizza/common/bloc/loading_bloc.dart';
import 'package:gearpizza/common/services/api_service.dart';
import 'package:gearpizza/common/services/biometric_auth_service.dart';
import 'package:gearpizza/common/services/secure_storage_service.dart';
import 'package:gearpizza/features/auth/repositories/auth_repository.dart';
import 'package:gearpizza/features/auth/services/auth_service.dart';
import 'package:gearpizza/features/auth/services/user_role_service.dart';
import 'package:gearpizza/features/notifications/bloc/notification_bloc.dart';
import 'package:gearpizza/features/notifications/repositories/notification_repository.dart';
import 'package:gearpizza/features/notifications/services/notification_service.dart';
import 'package:gearpizza/features/profile/repositories/profile_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../features/dashboard/repositories/dashboard_repository.dart';
import '../../features/dashboard/services/dashboard_service.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/foundation.dart'; // per kDebugMode

final GetIt getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  await SecureStorageService.initialize();
  await Firebase.initializeApp();
  // Carica variabili d'ambiente
  await dotenv.load(fileName: ".env");

  // Inizializza Supabase usando valori da .env
  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
    debug: kDebugMode,
  );
  await SupabaseAuthService().init();

  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  getIt.registerLazySingleton<GoogleSignIn>(() => GoogleSignIn());
  getIt.registerLazySingleton<SupabaseClient>(
    () => Supabase.instance.client,
  );
  getIt.registerLazySingleton<LocalAuthentication>(() => LocalAuthentication());

  getIt.registerLazySingleton<ApiService>(() => ApiService());
  getIt.registerLazySingleton<NotificationBloc>(() => NotificationBloc());
  getIt.registerLazySingleton<NotificationRepository>(
      () => NotificationRepository(GetIt.instance<ApiService>()));

  if (!getIt.isRegistered<SecureStorageService>()) {
    getIt.registerLazySingleton<SecureStorageService>(
        () => SecureStorageService.instance);
  }

  getIt.registerLazySingleton<LoadingBloc>(() => LoadingBloc());
  getIt.registerLazySingleton<ExceptionBloc>(() => ExceptionBloc());

  getIt.registerFactory<BiometricAuthService>(
      () => BiometricAuthService(LocalAuthentication()));

  // Auth Repository
  getIt.registerFactory<AuthRepository>(() => AuthRepository(
      firebaseAuth: getIt<FirebaseAuth>(),
      googleSignIn: getIt<GoogleSignIn>(),
      secureStorage: getIt<SecureStorageService>(),
      supabaseClient: getIt<SupabaseClient>()));

  // Auth Service
  getIt.registerFactory<AuthService>(() => AuthService(
        repository: getIt<AuthRepository>(),
        biometricService: getIt<BiometricAuthService>(),
      ));

  // Repository e Service per Onboarding
  getIt.registerLazySingleton<OnboardingRepository>(
    () => OnboardingRepository(supabaseClient: getIt<SupabaseClient>()),
  );
  getIt.registerLazySingleton<OnboardingService>(
    () => OnboardingService(getIt<OnboardingRepository>()),
  );

  getIt.registerFactory<UserRoleService>(() => UserRoleService());

  getIt.registerLazySingleton<DashboardRepository>(
      () => DashboardRepository(getIt<ApiService>()));
  getIt.registerLazySingleton<ProfileRepository>(() =>
      ProfileRepository(getIt<ApiService>(), getIt<NotificationRepository>()));

  getIt.registerLazySingleton<DashboardService>(() =>
      DashboardService(getIt<DashboardRepository>(), getIt<AuthService>()));

  await NotificationService.instance.init();
}
