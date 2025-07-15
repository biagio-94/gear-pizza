import 'package:flutter/material.dart';
import '../styles/font_sizes.dart';

enum ButtonType { yellowFilled, greenFilled, outlined }

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

    // Colori
    late Color backgroundColor;
    late Color textColor;

    switch (type) {
      case ButtonType.yellowFilled:
        backgroundColor = isDark ? cs.onSurface : cs.surface;
        textColor = isDark ? cs.surface : cs.onSurface;
        break;
      case ButtonType.greenFilled:
        backgroundColor = cs.secondary;
        textColor = cs.onPrimary;
        break;
      case ButtonType.outlined:
        backgroundColor = Colors.transparent;
        textColor = color ?? cs.primary;
        break;
    }

    // Padding dinamico
    final EdgeInsets padding = switch (width) {
      WideButton.small =>
        const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      WideButton.normal =>
        const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      WideButton.wide =>
        const EdgeInsets.symmetric(vertical: 12, horizontal: 50),
      WideButton.extraWide =>
        const EdgeInsets.symmetric(vertical: 12, horizontal: 70),
      _ => const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
    };

    final borderRadius = BorderRadius.circular(rounded ? 100 : 8);
    final buttonText = uppercase ? label.toUpperCase() : label;

    final style = ElevatedButton.styleFrom(
      backgroundColor:
          disabled ? cs.onSurface.withOpacity(0.12) : backgroundColor,
      foregroundColor: disabled ? cs.onSurface.withOpacity(0.38) : textColor,
      padding: padding,
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
    );

    final textStyle = TextStyle(
      fontSize: AppFontSizes.buttonText,
      fontWeight: AppFontSizes.medium,
      color: disabled ? cs.onSurface.withOpacity(0.38) : textColor,
    );

    return ElevatedButton(
      onPressed: disabled ? null : onPressed,
      style: style,
      child: icon != null
          ? Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: 24, color: textStyle.color),
                const SizedBox(width: 8),
                Text(buttonText, style: textStyle),
              ],
            )
          : Text(buttonText, style: textStyle),
    );
  }
}
