import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gearpizza/common/styles/colors_schemes.dart';

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: lightColorScheme,
  scaffoldBackgroundColor: AppColors.lightBackground,
  fontFamily: 'Sella',

  // AppBar
  appBarTheme: AppBarTheme(
    backgroundColor: lightColorScheme.primary,
    foregroundColor: lightColorScheme.onPrimary,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: lightColorScheme.primary,
      statusBarIconBrightness: Brightness.light,
    ),
    elevation: 0,
    iconTheme: IconThemeData(color: lightColorScheme.onPrimary),
    titleTextStyle: TextStyle(
      fontFamily: 'Sella',
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: lightColorScheme.onPrimary,
    ),
  ),

  // Text
  textTheme: TextTheme(
    displayMedium: TextStyle(fontSize: 20, color: lightColorScheme.primary),
    bodyMedium: TextStyle(fontSize: 15, color: lightColorScheme.onSurface),
    bodySmall: TextStyle(fontSize: 10, color: lightColorScheme.onSurface),
  ),

  // Buttons
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: lightColorScheme.primary,
      foregroundColor: lightColorScheme.onPrimary,
      textStyle: TextStyle(fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: BorderSide(color: lightColorScheme.primary),
      foregroundColor: lightColorScheme.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: lightColorScheme.primary,
      textStyle: const TextStyle(fontWeight: FontWeight.w500),
    ),
  ),

  // Inputs
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: lightColorScheme.surface,
    labelStyle: TextStyle(color: lightColorScheme.onSurface.withOpacity(0.7)),
    floatingLabelStyle: TextStyle(color: lightColorScheme.primary),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide:
          BorderSide(color: lightColorScheme.onSurface.withOpacity(0.4)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: lightColorScheme.primary, width: 2),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: lightColorScheme.error, width: 2),
    ),
    errorStyle: TextStyle(color: lightColorScheme.error),
  ),

  // BottomNavigationBar
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: lightColorScheme.surface,
    selectedItemColor: lightColorScheme.primary,
    unselectedItemColor: lightColorScheme.onSurface.withOpacity(0.6),
    showSelectedLabels: false,
    showUnselectedLabels: false,
  ),

  // Cards, Dividers, Dialogs
  cardTheme: CardThemeData(
    color: lightColorScheme.surface,
    elevation: 2,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),
  dividerTheme:
      DividerThemeData(color: lightColorScheme.onSurface.withOpacity(0.2)),
  dialogTheme: DialogThemeData(
    backgroundColor: lightColorScheme.surface,
    titleTextStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: lightColorScheme.onSurface,
    ),
    contentTextStyle: TextStyle(color: lightColorScheme.onSurface),
  ),

  // Toggle controls
  switchTheme: SwitchThemeData(
    trackColor: WidgetStateProperty.all(lightColorScheme.secondary),
    thumbColor: WidgetStateProperty.all(lightColorScheme.onSecondary),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: WidgetStateProperty.all(lightColorScheme.primary),
  ),
  radioTheme: RadioThemeData(
    fillColor: WidgetStateProperty.resolveWith<Color>(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return lightColorScheme.primary;
        }
        return lightColorScheme.onSurface.withOpacity(0.6);
      },
    ),
    overlayColor:
        WidgetStateProperty.all(lightColorScheme.primary.withOpacity(0.2)),
  ),

  // Icons
  iconTheme: IconThemeData(color: lightColorScheme.onSurface),

  textSelectionTheme: TextSelectionThemeData(
    cursorColor: lightColorScheme.secondary, // già avevi nel widget
    selectionColor: lightColorScheme.secondary.withOpacity(0.4),
    selectionHandleColor: lightColorScheme.onSurface, // bianco in dark mode
  ),
);

final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: darkColorScheme,
  scaffoldBackgroundColor: AppColors.darkBackground,
  fontFamily: 'Sella',
  appBarTheme: AppBarTheme(
    backgroundColor: darkColorScheme.primary,
    foregroundColor: darkColorScheme.onPrimary,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: darkColorScheme.primary,
      statusBarIconBrightness: Brightness.light,
    ),
    elevation: 0,
    iconTheme: IconThemeData(color: darkColorScheme.onPrimary),
    titleTextStyle: TextStyle(
      fontFamily: 'Sella',
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: darkColorScheme.onPrimary,
    ),
  ),
  textTheme: TextTheme(
    displayMedium: TextStyle(fontSize: 20, color: darkColorScheme.primary),
    bodyMedium: TextStyle(fontSize: 15, color: darkColorScheme.onSurface),
    bodySmall: TextStyle(fontSize: 10, color: darkColorScheme.onSurface),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: darkColorScheme.primary,
      foregroundColor: darkColorScheme.onPrimary,
      textStyle: TextStyle(fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: BorderSide(color: darkColorScheme.primary),
      foregroundColor: darkColorScheme.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: darkColorScheme.primary,
      textStyle: const TextStyle(fontWeight: FontWeight.w500),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: darkColorScheme.surface,
    labelStyle: TextStyle(color: darkColorScheme.onSurface.withOpacity(0.7)),
    floatingLabelStyle: TextStyle(color: darkColorScheme.primary),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: darkColorScheme.onSurface.withOpacity(0.4)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: darkColorScheme.primary, width: 2),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: darkColorScheme.error, width: 2),
    ),
    errorStyle: TextStyle(color: darkColorScheme.error),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: darkColorScheme.surface,
    selectedItemColor: darkColorScheme.primary,
    unselectedItemColor: darkColorScheme.onSurface.withOpacity(0.6),
    showSelectedLabels: false,
    showUnselectedLabels: false,
  ),
  cardTheme: CardThemeData(
    color: darkColorScheme.surface,
    elevation: 2,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),
  dividerTheme:
      DividerThemeData(color: darkColorScheme.onSurface.withOpacity(0.2)),
  dialogTheme: DialogThemeData(
    backgroundColor: darkColorScheme.surface,
    titleTextStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: darkColorScheme.onSurface,
    ),
    contentTextStyle: TextStyle(color: darkColorScheme.onSurface),
  ),
  switchTheme: SwitchThemeData(
    trackColor: WidgetStateProperty.all(darkColorScheme.secondary),
    thumbColor: WidgetStateProperty.all(darkColorScheme.onSecondary),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: WidgetStateProperty.all(darkColorScheme.primary),
  ),
  radioTheme: RadioThemeData(
    fillColor: WidgetStateProperty.resolveWith<Color>(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return darkColorScheme.onPrimary;
        }
        return darkColorScheme.onSurface.withOpacity(0.6);
      },
    ),
    overlayColor:
        WidgetStateProperty.all(darkColorScheme.primary.withOpacity(0.2)),
  ),
  iconTheme: IconThemeData(color: darkColorScheme.onSurface),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: darkColorScheme.secondary, // già avevi nel widget
    selectionColor: darkColorScheme.secondary.withOpacity(0.4),
    selectionHandleColor: darkColorScheme.onSurface, // bianco in dark mode
  ),
);
