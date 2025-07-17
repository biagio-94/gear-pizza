import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gearpizza/common/styles/colors_schemes.dart';

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: lightColorScheme,
  scaffoldBackgroundColor: AppColors.lightBackground,
  textTheme: GoogleFonts.interTextTheme().copyWith(
    displayMedium: GoogleFonts.inter(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: lightColorScheme.primary,
    ),
    bodyMedium: GoogleFonts.inter(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: lightColorScheme.onSurface,
    ),
    bodySmall: GoogleFonts.inter(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: lightColorScheme.onSurface,
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: lightColorScheme.primary,
    foregroundColor: lightColorScheme.onPrimary,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: lightColorScheme.primary,
      statusBarIconBrightness: Brightness.light,
    ),
    elevation: 0,
    iconTheme: IconThemeData(color: lightColorScheme.onPrimary),
    titleTextStyle: GoogleFonts.inter(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: lightColorScheme.onPrimary,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: lightColorScheme.primary,
      foregroundColor: lightColorScheme.onPrimary,
      textStyle: GoogleFonts.inter(fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: BorderSide(color: lightColorScheme.primary),
      foregroundColor: lightColorScheme.primary,
      textStyle: GoogleFonts.inter(fontWeight: FontWeight.w500),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: lightColorScheme.primary,
      textStyle: GoogleFonts.inter(fontWeight: FontWeight.w500),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: lightColorScheme.surface,
    labelStyle: GoogleFonts.inter(
      color: lightColorScheme.onSurface.withOpacity(0.7),
      fontWeight: FontWeight.w400,
    ),
    floatingLabelStyle: GoogleFonts.inter(
      color: lightColorScheme.primary,
      fontWeight: FontWeight.w500,
    ),
    errorStyle: GoogleFonts.inter(color: lightColorScheme.error),
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
  ),
  dialogTheme: DialogThemeData(
    backgroundColor: lightColorScheme.surface,
    titleTextStyle: GoogleFonts.inter(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: lightColorScheme.onSurface,
    ),
    contentTextStyle: GoogleFonts.inter(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: lightColorScheme.onSurface,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: lightColorScheme.surface,
    selectedItemColor: lightColorScheme.primary,
    unselectedItemColor: lightColorScheme.onSurface.withOpacity(0.6),
    showSelectedLabels: false,
    showUnselectedLabels: false,
  ),
  cardTheme: CardThemeData(
    color: lightColorScheme.surface,
    elevation: 2,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),
  dividerTheme:
      DividerThemeData(color: lightColorScheme.onSurface.withOpacity(0.2)),
  switchTheme: SwitchThemeData(
    trackColor: WidgetStateProperty.all(lightColorScheme.secondary),
    thumbColor: WidgetStateProperty.all(lightColorScheme.onSecondary),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: WidgetStateProperty.all(lightColorScheme.primary),
  ),
  radioTheme: RadioThemeData(
    fillColor: WidgetStateProperty.resolveWith<Color>(
      (states) => states.contains(WidgetState.selected)
          ? lightColorScheme.primary
          : lightColorScheme.onSurface.withOpacity(0.6),
    ),
    overlayColor:
        WidgetStateProperty.all(lightColorScheme.primary.withOpacity(0.2)),
  ),
  iconTheme: IconThemeData(color: lightColorScheme.onSurface),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: lightColorScheme.secondary,
    selectionColor: lightColorScheme.secondary.withOpacity(0.4),
    selectionHandleColor: lightColorScheme.onSurface,
  ),
);

final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: darkColorScheme,
  scaffoldBackgroundColor: AppColors.darkBackground,
  textTheme: GoogleFonts.interTextTheme().copyWith(
    displayMedium: GoogleFonts.inter(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: darkColorScheme.primary,
    ),
    bodyMedium: GoogleFonts.inter(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: darkColorScheme.onSurface,
    ),
    bodySmall: GoogleFonts.inter(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: darkColorScheme.onSurface,
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: darkColorScheme.primary,
    foregroundColor: darkColorScheme.onPrimary,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: darkColorScheme.primary,
      statusBarIconBrightness: Brightness.light,
    ),
    elevation: 0,
    iconTheme: IconThemeData(color: darkColorScheme.onPrimary),
    titleTextStyle: GoogleFonts.inter(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: darkColorScheme.onPrimary,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: darkColorScheme.primary,
      foregroundColor: darkColorScheme.onPrimary,
      textStyle: GoogleFonts.inter(fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: BorderSide(color: darkColorScheme.primary),
      foregroundColor: darkColorScheme.primary,
      textStyle: GoogleFonts.inter(fontWeight: FontWeight.w500),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: darkColorScheme.primary,
      textStyle: GoogleFonts.inter(fontWeight: FontWeight.w500),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: darkColorScheme.surface,
    labelStyle: GoogleFonts.inter(
      color: darkColorScheme.onSurface.withOpacity(0.7),
      fontWeight: FontWeight.w400,
    ),
    floatingLabelStyle: GoogleFonts.inter(
      color: darkColorScheme.primary,
      fontWeight: FontWeight.w500,
    ),
    errorStyle: GoogleFonts.inter(color: darkColorScheme.error),
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
  ),
  dialogTheme: DialogThemeData(
    backgroundColor: darkColorScheme.surface,
    titleTextStyle: GoogleFonts.inter(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: darkColorScheme.onSurface,
    ),
    contentTextStyle: GoogleFonts.inter(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: darkColorScheme.onSurface,
    ),
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
  switchTheme: SwitchThemeData(
    trackColor: WidgetStateProperty.all(darkColorScheme.secondary),
    thumbColor: WidgetStateProperty.all(darkColorScheme.onSecondary),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: WidgetStateProperty.all(darkColorScheme.primary),
  ),
  radioTheme: RadioThemeData(
    fillColor: WidgetStateProperty.resolveWith<Color>(
      (states) => states.contains(WidgetState.selected)
          ? darkColorScheme.primary
          : darkColorScheme.onSurface.withOpacity(0.6),
    ),
    overlayColor:
        WidgetStateProperty.all(darkColorScheme.primary.withOpacity(0.2)),
  ),
  iconTheme: IconThemeData(color: darkColorScheme.onSurface),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: darkColorScheme.secondary,
    selectionColor: darkColorScheme.secondary.withOpacity(0.4),
    selectionHandleColor: darkColorScheme.onSurface,
  ),
);
