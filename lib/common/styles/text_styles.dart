import 'package:flutter/material.dart';
import 'package:gearpizza/common/styles/font_sizes.dart';

class AppTextStyles {
  // Titles
  static TextStyle titleLarge(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.bigTitle,
        fontWeight: AppFontSizes.bold,
        color: Theme.of(context).colorScheme.onSurface,
      );

  static TextStyle titleMedium(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.titleMedium,
        fontWeight: AppFontSizes.semiBold,
        color: Theme.of(context).colorScheme.onSurface,
      );

  static TextStyle titleSmall(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.titleSmall,
        fontWeight: AppFontSizes.medium,
        color: Theme.of(context).colorScheme.onSurface,
      );

  // Body text
  static TextStyle body(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.bodyText,
        fontWeight: AppFontSizes.regular,
        height: 1.5,
        color: Theme.of(context).colorScheme.onSurface,
      );

  static TextStyle bodyLarge(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.bodyTextLarge,
        fontWeight: AppFontSizes.bold,
        height: 1.5,
        color: Theme.of(context).colorScheme.onSurface,
      );

  static TextStyle bodySmall(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.bodyTextSmall,
        fontWeight: AppFontSizes.regular,
        color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
      );

  static TextStyle caption(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.caption,
        color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
      );

  // Input
  static TextStyle inputLabelStyle(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.label,
        fontWeight: AppFontSizes.medium,
        color: Theme.of(context).colorScheme.onSurface,
      );

  static TextStyle inputFloatingLabelStyle(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.floatingLabel,
        fontWeight: AppFontSizes.semiBold,
        color: Theme.of(context).colorScheme.onSurface,
      );

  static TextStyle inputErrorStyle(BuildContext context) => TextStyle(
        fontSize: 12,
        fontWeight: AppFontSizes.bold,
        color: Theme.of(context).colorScheme.error,
      );

  // Buttons
  static TextStyle button(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.buttonText,
        fontWeight: AppFontSizes.semiBold,
        color: Theme.of(context).colorScheme.onPrimary,
      );

  static TextStyle buttonLarge(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.buttonTextLarge,
        fontWeight: AppFontSizes.bold,
        color: Theme.of(context).colorScheme.onPrimary,
      );

  // Links
  static TextStyle linkText(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.textLink,
        fontWeight: AppFontSizes.medium,
        color: Theme.of(context).colorScheme.primary,
        decoration: TextDecoration.underline,
      );

  // Headers
  static TextStyle h1(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.title,
        fontWeight: AppFontSizes.bold,
        color: Theme.of(context).colorScheme.onSurface,
      );

  static TextStyle h2(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.bodyTextLarge,
        fontWeight: AppFontSizes.semiBold,
        color: Theme.of(context).colorScheme.onSurface,
      );

  // Description styles
  static TextStyle descriptionPageStyle(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.bodyText,
        color: Theme.of(context).colorScheme.onSurface,
      );

  static TextStyle smallDescriptionStyle(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.bodyTextSmall,
        color: Theme.of(context).colorScheme.onSurface,
      );

  // White text
  static TextStyle whiteText(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.bodyText,
        color: Colors.white,
      );

  static TextStyle whiteTextLarge(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.bodyTextLarge,
        color: Colors.white,
      );

  static TextStyle whiteTextTitle(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.title,
        fontWeight: AppFontSizes.bold,
        color: Colors.white,
      );

  // Other colored text
  static TextStyle smallGreyText(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.bodyTextSmall,
        fontWeight: AppFontSizes.medium,
        color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
      );

  static TextStyle smallBlueText(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.bodyTextSmall,
        fontWeight: AppFontSizes.medium,
        color: Theme.of(context).colorScheme.primary,
      );

  static TextStyle mediumGreyText(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.buttonText,
        fontWeight: AppFontSizes.medium,
        color: Theme.of(context).colorScheme.onSurface,
      );

  static TextStyle mediumBlueText(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.buttonText,
        fontWeight: AppFontSizes.medium,
        color: Theme.of(context).colorScheme.primary,
      );

  static TextStyle mediumBlueBoldText(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.buttonText,
        fontWeight: AppFontSizes.semiBold,
        color: Theme.of(context).colorScheme.primary,
      );

  static TextStyle blueTextPageTitleStyle(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.bodyTextSmall,
        fontWeight: AppFontSizes.bold,
        color: Theme.of(context).colorScheme.primary,
      );
}
