import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gearpizza/common/services/firestore_service.dart';
import 'package:gearpizza/features/cart/repositories/cart_repository.dart';
import 'package:gearpizza/features/cart/services/cart_service.dart';
import 'package:gearpizza/features/profile/repositories/user_repository.dart';
import 'package:gearpizza/features/profile/services/user_service.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:local_auth/local_auth.dart';
import 'package:gearpizza/common/bloc/exception_bloc.dart';
import 'package:gearpizza/common/bloc/loading_bloc.dart';
import 'package:gearpizza/common/services/api_service.dart';
import 'package:gearpizza/common/services/biometric_auth_service.dart';
import 'package:gearpizza/common/services/secure_storage_service.dart';
import 'package:gearpizza/features/auth/repositories/auth_repository.dart';
import 'package:gearpizza/features/auth/services/auth_service.dart';
import 'package:gearpizza/features/auth/services/user_role_service.dart';
import '../../features/dashboard/repositories/dashboard_repository.dart';
import '../../features/dashboard/services/dashboard_service.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  await SecureStorageService.initialize();
  await Firebase.initializeApp();
  // Carica variabili d'ambiente
  await dotenv.load(fileName: ".env");

  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  getIt.registerLazySingleton<GoogleSignIn>(() => GoogleSignIn());
  getIt.registerLazySingleton<FirebaseStorageService>(
      () => FirebaseStorageService());

  getIt.registerLazySingleton<LocalAuthentication>(() => LocalAuthentication());

  getIt.registerLazySingleton<ApiService>(() => ApiService());

  if (!getIt.isRegistered<SecureStorageService>()) {
    getIt.registerLazySingleton<SecureStorageService>(
        () => SecureStorageService.instance);
  }

  getIt.registerLazySingleton<LoadingBloc>(() => LoadingBloc());
  getIt.registerLazySingleton<ExceptionBloc>(() => ExceptionBloc());

  getIt.registerFactory<BiometricAuthService>(
      () => BiometricAuthService(LocalAuthentication()));

  // Auth Repository
  getIt.registerFactory<AuthRepository>(
    () => AuthRepository(
        firebaseAuth: getIt<FirebaseAuth>(),
        googleSignIn: getIt<GoogleSignIn>(),
        secureStorage: getIt<SecureStorageService>(),
        apiService: getIt<ApiService>()),
  );

  // Auth Service
  getIt.registerFactory<AuthService>(() => AuthService(
        repository: getIt<AuthRepository>(),
        biometricService: getIt<BiometricAuthService>(),
      ));

  getIt.registerFactory<UserRoleService>(() => UserRoleService());

  getIt.registerLazySingleton<DashboardRepository>(
      () => DashboardRepository(getIt<ApiService>()));

  getIt.registerLazySingleton<DashboardService>(() =>
      DashboardService(getIt<DashboardRepository>(), getIt<AuthService>()));

  getIt.registerLazySingleton<CartRepository>(
      () => CartRepository(getIt<ApiService>()));

  getIt.registerLazySingleton<CartService>(() => CartService(
        getIt<CartRepository>(),
      ));

  getIt.registerLazySingleton<UserRepository>(
      () => UserRepository(getIt<ApiService>(), getIt<SecureStorageService>()));

  getIt.registerLazySingleton<UserService>(() => UserService(
        getIt<UserRepository>(),
      ));
}
