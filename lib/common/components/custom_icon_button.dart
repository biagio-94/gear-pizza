import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final double? iconSize;
  final Color? color;
  final bool hasBackground;

  const CustomIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.iconSize,
    this.color,
    this.hasBackground = true,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return IconButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor:
            hasBackground ? WidgetStateProperty.all(colorScheme.primary) : null,
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        padding: WidgetStateProperty.all(const EdgeInsets.all(12.0)),
      ),
      icon: Icon(
        icon,
        color: color ?? colorScheme.onPrimary,
        size: iconSize ?? 24.0,
      ),
    );
  }
}
