import 'package:flutter/material.dart';
import '../styles/font_sizes.dart';

enum ButtonType { yellowFilled, greenFilled, outlined }

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final IconData? icon;
  final ButtonType type;
  final bool uppercase;
  final bool rounded;
  final bool disabled;
  final bool expanded;
  final Color? color;

  const CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
    required this.type,
    this.color,
    this.expanded = false,
    this.uppercase = false,
    this.rounded = false,
    this.disabled = false,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    // Default colors
    late Color backgroundColor;
    late Color textColor;
    late Color borderColor;

    switch (type) {
      case ButtonType.yellowFilled:
        backgroundColor = cs.primary;
        textColor = cs.onPrimary;
        borderColor = Colors.transparent;
        break;
      case ButtonType.greenFilled:
        backgroundColor = cs.secondary;
        textColor = cs.onSecondary;
        borderColor = Colors.transparent;
        break;
      case ButtonType.outlined:
        backgroundColor = Colors.transparent;
        textColor = color ?? cs.primary;
        borderColor = color ?? cs.primary;
        break;
    }

    final borderRadius = BorderRadius.circular(rounded ? 100 : 8);
    const padding = EdgeInsets.symmetric(vertical: 14, horizontal: 24);

    final style = ElevatedButton.styleFrom(
      backgroundColor:
          disabled ? cs.onSurface.withOpacity(0.12) : backgroundColor,
      foregroundColor: disabled ? cs.onSurface.withOpacity(0.38) : textColor,
      padding: padding,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: disabled ? cs.onSurface.withOpacity(0.12) : borderColor,
        ),
        borderRadius: borderRadius,
      ),
      elevation: type == ButtonType.outlined ? 0 : null,
    );

    final buttonText = uppercase ? label.toUpperCase() : label;
    final textStyle = TextStyle(
      fontSize: AppFontSizes.buttonText,
      fontWeight: AppFontSizes.medium,
      color: disabled ? cs.onSurface.withOpacity(0.38) : textColor,
    );

    // Build the content without wrapping Flexible outside a Flex
    Widget childContent;
    if (icon != null) {
      childContent = Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 24, color: textStyle.color),
          const SizedBox(width: 8),
          Text(buttonText, style: textStyle),
        ],
      );
    } else {
      childContent = Text(buttonText, style: textStyle);
    }

    final button = ElevatedButton(
      onPressed: disabled ? null : onPressed,
      style: style,
      child: childContent,
    );

    return expanded ? SizedBox(width: double.infinity, child: button) : button;
  }
}
