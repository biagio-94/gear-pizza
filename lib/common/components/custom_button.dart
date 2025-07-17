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

    // Colori di default
    late Color backgroundColor;
    late Color textColor;
    late Color borderColor;

    switch (type) {
      case ButtonType.yellowFilled:
        backgroundColor = cs.primary; // giallo del tema
        textColor = cs.onPrimary; // testo contrastato
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

    // Raggio angoli
    final borderRadius = BorderRadius.circular(rounded ? 100 : 8);

    // Padding fisso (verticale + orizzontale moderato)
    const padding = EdgeInsets.symmetric(vertical: 14, horizontal: 24);

    // Stile base
    final style = ElevatedButton.styleFrom(
      backgroundColor:
          disabled ? cs.onSurface.withOpacity(0.12) : backgroundColor,
      foregroundColor: disabled ? cs.onSurface.withOpacity(0.38) : textColor,
      padding: padding,
      shape: RoundedRectangleBorder(
        side: BorderSide(
            color: disabled ? cs.onSurface.withOpacity(0.12) : borderColor),
        borderRadius: borderRadius,
      ),
      elevation: type == ButtonType.outlined ? 0 : null,
    );

    // Testo
    final buttonText = uppercase ? label.toUpperCase() : label;
    final textStyle = TextStyle(
      fontSize: AppFontSizes.buttonText,
      fontWeight: AppFontSizes.medium,
      color: disabled ? cs.onSurface.withOpacity(0.38) : textColor,
    );

    // Contenuto del bottone
    final child = icon != null
        ? Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 24, color: textStyle.color),
              const SizedBox(width: 8),
              Flexible(child: Text(buttonText, style: textStyle)),
            ],
          )
        : Flexible(child: Text(buttonText, style: textStyle));

    // Se expanded == true, il bottone occupa tutta la larghezza disponibile
    final button = ElevatedButton(
      onPressed: disabled ? null : onPressed,
      style: style,
      child: child,
    );

    return expanded ? SizedBox(width: double.infinity, child: button) : button;
  }
}
