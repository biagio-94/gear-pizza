import 'package:flutter/material.dart';

class AppColors {
  // Shared palette
  static const Color darkBlue = Color(0xFF080E1A);
  static const Color white = Color(0xFFFFFFFF);
  static const Color blueAccent = Color(0xFF3D8BFF); // Vibrant secondary
  static const Color darkGrey = Color(0xFF1C1C1E);
  static const Color grey = Color(0xFF2C2C2E);
  static const Color errorRed = Color(0xFFEF4444);
  static const Color successGreen = Color(0xFF22C55E);

  // Light theme colors
  static const Color lightBackground = white;
  static const Color lightOnBackground = darkBlue;
  static const Color lightSurface = Color(0xFFF5F5F5);
  static const Color lightOnSurface = darkBlue;

  // Dark theme colors
  static const Color darkBackground = darkBlue;
  static const Color darkOnBackground = white;
  static const Color darkSurface = darkGrey;
  static const Color darkOnSurface = white;
}

final ColorScheme lightColorScheme = const ColorScheme(
  brightness: Brightness.light,
  primary: AppColors.darkBlue,
  onPrimary: AppColors.white,
  primaryContainer: AppColors.grey,
  onPrimaryContainer: AppColors.white,
  secondary: AppColors.blueAccent,
  onSecondary: AppColors.white,
  error: AppColors.errorRed,
  onError: AppColors.white,
  surface: AppColors.lightSurface,
  onSurface: AppColors.lightOnSurface,
);

final ColorScheme darkColorScheme = const ColorScheme(
  brightness: Brightness.dark,
  primary: AppColors.darkBlue,
  onPrimary: AppColors.white,
  primaryContainer: AppColors.grey,
  onPrimaryContainer: AppColors.white,
  secondary: AppColors.blueAccent,
  onSecondary: AppColors.white,
  error: AppColors.errorRed,
  onError: AppColors.white,
  surface: AppColors.darkSurface,
  onSurface: AppColors.darkOnSurface,
);
