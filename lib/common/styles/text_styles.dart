import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gearpizza/common/styles/font_sizes.dart';

class AppTextStyles {
  // Non const perché usano context per colore
  static TextStyle whiteText(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.bodyText,
        color: Colors
            .white, // o Theme.of(context).colorScheme.onPrimary se preferisci
      );

  static TextStyle whiteTextLarge(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.bodyTextLarge,
        color: Colors.white,
      );

  static TextStyle whiteTextTitle(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.title,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      );

  static TextStyle smallGreyText(BuildContext context) => TextStyle(
        fontWeight: FontWeight
            .w500, // correggi qui da AppFontSizes.medium (che è probabilmente un double)
        fontSize: AppFontSizes.bodyTextSmall,
        color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
      );

  static TextStyle smallBlueText(BuildContext context) => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: AppFontSizes.bodyTextSmall,
        color: Theme.of(context).colorScheme.primary,
      );

  static TextStyle mediumGreyText(BuildContext context) => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: AppFontSizes.buttonText,
        color: Theme.of(context).colorScheme.onSurface,
      );

  static TextStyle mediumBlueText(BuildContext context) => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: AppFontSizes.buttonText,
        color: Theme.of(context).colorScheme.primary,
      );

  static TextStyle mediumBlueBoldText(BuildContext context) => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: AppFontSizes.buttonText,
        color: Theme.of(context).colorScheme.primary,
      );

  static TextStyle blueTextPageTitleStyle(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.bodyTextSmall,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.primary,
      );

  static TextStyle descriptionPageStyle(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.bodyText,
        color: Theme.of(context).colorScheme.onBackground,
      );

  static TextStyle smallDescriptionStyle(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.bodyTextSmall,
        color: Theme.of(context).colorScheme.onBackground,
      );

  // Input styles
  static TextStyle inputLabelStyle(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.bodyText,
        color: Theme.of(context).colorScheme.onSurface,
      );

  static TextStyle inputFloatingLabelStyle(BuildContext context) => TextStyle(
        overflow: TextOverflow.ellipsis,
        fontSize: AppFontSizes.floatingLabel,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.primary,
      );

  static TextStyle inputErrorStyle(BuildContext context) => TextStyle(
        color: Theme.of(context).colorScheme.error,
        fontSize: 10,
        fontWeight: FontWeight.bold,
      );

  // Header styles (esempi già presenti)
  static TextStyle h1(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.title,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.onBackground,
      );

  static TextStyle h2(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.bodyTextLarge,
        fontWeight: FontWeight.w600,
        color: Theme.of(context).colorScheme.onBackground,
      );

  // Body text
  static TextStyle body(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.bodyText,
        fontWeight: FontWeight.normal,
        color: Theme.of(context).colorScheme.onBackground,
      );

  static TextStyle bodySmall(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.bodyTextSmall,
        fontWeight: FontWeight.normal,
        color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
      );

  // Button Text
  static TextStyle button(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.buttonText,
        fontWeight: FontWeight.w500,
        color: Theme.of(context).colorScheme.onPrimary,
      );
}
