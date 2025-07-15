import 'package:flutter/material.dart';
import '../styles/font_sizes.dart';

enum ButtonType { whiteFilled, blueFilled, outlined }

enum WideButton { small, normal, wide, extraWide }

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final IconData? icon;
  final ButtonType type;
  final WideButton? width;
  final bool uppercase;
  final bool rounded;
  final bool disabled;
  final Color? color;

  const CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.width,
    this.color,
    required this.type,
    this.uppercase = false,
    this.rounded = false,
    this.disabled = false,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final isDark = cs.brightness == Brightness.dark;

    // Determina colori in base al tipo e al tema
    late Color backgroundColor;
    late Color textColor;
    late Color borderColor;

    switch (type) {
      case ButtonType.whiteFilled:
        // Su dark: bianco bg + nero testo; su light: nero bg + bianco testo
        backgroundColor = isDark ? cs.onSurface : cs.surface;
        textColor = isDark ? cs.surface : cs.onSurface;
        borderColor = Colors.transparent;
        break;
      case ButtonType.blueFilled:
        backgroundColor = cs.primary;
        textColor = cs.onPrimary;
        borderColor = cs.primary;
        break;
      case ButtonType.outlined:
        backgroundColor = Colors.transparent;
        textColor = color ?? cs.primary;
        borderColor = color ?? cs.primary;
        break;
    }

    // Padding in base alla larghezza
    late EdgeInsets padding;
    switch (width) {
      case WideButton.small:
        padding = const EdgeInsets.symmetric(vertical: 6, horizontal: 12);
        break;
      case WideButton.normal:
        padding = const EdgeInsets.symmetric(vertical: 12, horizontal: 24);
        break;
      case WideButton.wide:
        padding = const EdgeInsets.symmetric(vertical: 12, horizontal: 50);
        break;
      case WideButton.extraWide:
        padding = const EdgeInsets.symmetric(vertical: 12, horizontal: 70);
        break;
      default:
        padding = const EdgeInsets.symmetric(vertical: 12, horizontal: 18);
    }

    final borderRadius = BorderRadius.circular(rounded ? 18 : 8);
    final buttonText = uppercase ? label.toUpperCase() : label;

    final buttonStyle = ElevatedButton.styleFrom(
      backgroundColor:
          disabled ? cs.onSurface.withOpacity(0.12) : backgroundColor,
      foregroundColor: disabled ? cs.onSurface.withOpacity(0.38) : textColor,
      padding: padding,
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
      side: BorderSide(
          color: disabled ? cs.onSurface.withOpacity(0.12) : borderColor),
    );

    return ElevatedButton(
      onPressed: disabled ? null : onPressed,
      style: buttonStyle,
      child: icon != null
          ? Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon,
                    size: 24, color: buttonStyle.foregroundColor?.resolve({})),
                const SizedBox(width: 8),
                Text(
                  buttonText,
                  style: TextStyle(
                    fontSize: uppercase
                        ? AppFontSizes.bodyText
                        : AppFontSizes.bodyTextLarge,
                    fontWeight: FontWeight.w600,
                    color: buttonStyle.foregroundColor?.resolve({}),
                  ),
                ),
              ],
            )
          : Text(
              buttonText,
              style: TextStyle(
                fontSize: uppercase
                    ? AppFontSizes.bodyText
                    : AppFontSizes.bodyTextLarge,
                fontWeight: FontWeight.w600,
                color: buttonStyle.foregroundColor?.resolve({}),
              ),
            ),
    );
  }
}
