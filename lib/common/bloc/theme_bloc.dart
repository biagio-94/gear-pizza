import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';
import 'package:gearpizza/common/services/secure_storage_service.dart';

abstract class ThemeState extends Equatable {
  const ThemeState();

  @override
  List<Object> get props => [];
}

class LightThemeState extends ThemeState {}

class DarkThemeState extends ThemeState {}

class ThemeCubit extends Cubit<ThemeState> {
  final SecureStorageService _secureStorage;

  ThemeCubit(SecureStorageService secureStorageService)
      : _secureStorage = GetIt.I<SecureStorageService>(),
        super(LightThemeState()) {
    _loadTheme();
  }

  Future<void> _loadTheme() async {
    final isDarkMode =
        await _secureStorage.readSecureData('isDarkMode') ?? 'false';
    emit(isDarkMode == 'true' ? DarkThemeState() : LightThemeState());
  }

  Future<void> toggleTheme() async {
    if (state is LightThemeState) {
      emit(DarkThemeState());
      await _secureStorage.writeSecureData('isDarkMode', 'true');
    } else {
      emit(LightThemeState());
      await _secureStorage.writeSecureData('isDarkMode', 'false');
    }
  }
}
