import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  // Palette Glovo-inspired
  static const Color glovoYellow = Color(0xFFFFD600); // Primary vibrant yellow
  static const Color glovoGreen = Color(0xFF01BF98); // Secondary accent
  static const Color darkBackground = Color(0xFF121212);
  static const Color lightBackground = Color(0xFFFFFFFF);
  static const Color lightSurface =
      Color(0xFFFFFFFF); // super chiaro, quasi bianco per surface light
  static const Color darkSurface = Color(0xFF1E1E1E);
  static const Color lightOnSurface =
      Color(0xFF222222); // testo scuro su surface chiara
  static const Color darkOnSurface =
      Color(0xFFECECEC); // testo chiaro su surface scura
  static const Color errorRed = Color(0xFFE53935);
  static const Color successGreen = Color(0xFF43A047);
}

final ColorScheme lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: AppColors.glovoYellow,
  onPrimary: Colors.black, // testo nero su primary giallo
  secondary: AppColors.glovoGreen,
  onSecondary: Colors.white,
  error: AppColors.errorRed,
  onError: Colors.white,
  background: AppColors.lightBackground,
  onBackground: AppColors.lightOnSurface,
  surface: AppColors.lightSurface, // bianco, container primari bianchi
  onSurface: AppColors.lightOnSurface, // testo nero su surface bianco
  tertiary: AppColors.glovoGreen,
  onTertiary: Colors.white,
);

final ColorScheme darkColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: AppColors.glovoYellow,
  onPrimary: Colors.black, // testo nero su primary giallo
  secondary: AppColors.glovoGreen,
  onSecondary: Colors.white,
  error: AppColors.errorRed,
  onError: Colors.white,
  background: AppColors.lightOnSurface,
  onBackground: AppColors.lightSurface,
  surface: AppColors.lightOnSurface, // bianco, container primari bianchi
  onSurface: AppColors.lightSurface, // testo nero su surface bianco
  tertiary: AppColors.glovoGreen,
  onTertiary: Colors.white,
);
