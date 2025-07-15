import 'package:flutter/material.dart';
import 'colors_schemes.dart';
import 'font_sizes.dart';

class AppTextStyles {
// Text styles
  static const TextStyle whiteTextStyle = TextStyle(
    fontSize: AppFontSizes.bodyText,
  );

  static const TextStyle whiteTextLargeStyle = TextStyle(
    fontSize: AppFontSizes.bodyTextLarge,
  );

  static const TextStyle whiteTextTitleStyle = TextStyle(
    fontSize: AppFontSizes.title,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle smallGreyText = TextStyle(
    fontWeight: AppFontSizes.medium,
    fontSize: AppFontSizes.bodyTextSmall,
  );

  static const TextStyle smallThinGreyText = TextStyle(
    fontWeight: AppFontSizes.normal,
    fontSize: AppFontSizes.bodyTextSmall,
  );

  static const TextStyle smallBlueText = TextStyle(
    fontWeight: AppFontSizes.medium,
    fontSize: AppFontSizes.bodyTextSmall,
  );

  static const TextStyle mediumGreyText = TextStyle(
    fontWeight: AppFontSizes.medium,
    fontSize: AppFontSizes.buttonText,
  );

  static const TextStyle mediumBlueText = TextStyle(
    fontWeight: AppFontSizes.medium,
    fontSize: AppFontSizes.buttonText,
  );

  static const TextStyle mediumBlueBoldText = TextStyle(
    fontWeight: AppFontSizes.semiBold,
    fontSize: AppFontSizes.buttonText,
  );

  static const TextStyle blueTextPageTitleStyle = TextStyle(
    fontSize: AppFontSizes.bodyTextSmall,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle descriptionPageStyle = TextStyle(
    fontSize: AppFontSizes.bodyText,
  );

  static const TextStyle smallDescriptionStyle = TextStyle(
    fontSize: AppFontSizes.bodyTextSmall,
  );

  // Input styles
  static const TextStyle inputLabelStyle = TextStyle(
    fontSize: AppFontSizes.bodyText,
  );

  static const TextStyle inputFloatingLabelStyle = TextStyle(
    overflow: TextOverflow.ellipsis,
    fontSize: AppFontSizes.floatingLabel,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle inputErrorStyle = TextStyle(
    color: Colors.redAccent,
    fontSize: 10,
    fontWeight: FontWeight.bold,
  );
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

  // Body Text
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

  // White text variants
  static TextStyle whiteText(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.bodyText,
        color: AppColors.white,
      );

  static TextStyle whiteTextLarge(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.bodyTextLarge,
        color: AppColors.white,
      );

  // Button Text
  static TextStyle button(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.buttonText,
        fontWeight: FontWeight.w500,
        color: Theme.of(context).colorScheme.onPrimary,
      );

  // Input styles
  static TextStyle inputLabel(BuildContext context) => TextStyle(
        fontSize: AppFontSizes.bodyText,
        color: Theme.of(context).colorScheme.onSurface,
      );

  static TextStyle inputFloatingLabel(BuildContext context) => TextStyle(
        overflow: TextOverflow.ellipsis,
        fontSize: AppFontSizes.floatingLabel,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.primary,
      );

  static TextStyle inputError(BuildContext context) => TextStyle(
        color: AppColors.errorRed,
        fontSize: AppFontSizes.bodyTextSmall,
        fontWeight: FontWeight.bold,
      );
}
