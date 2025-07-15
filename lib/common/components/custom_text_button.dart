import 'package:flutter/material.dart';
import 'package:gearpizza/common/styles/font_sizes.dart';

class CustomTextButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color? color;
  final bool underlined;
  final FontWeight fontWeight;

  const CustomTextButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.color,
    this.underlined = false,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveColor = color ?? Theme.of(context).primaryColor;
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
          padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.all(0))),
      child: Text(
        label,
        style: TextStyle(
            color: color ?? Theme.of(context).primaryColor,
            decoration:
                underlined ? TextDecoration.underline : TextDecoration.none,
            decorationColor: effectiveColor,
            fontWeight: fontWeight,
            fontSize: AppFontSizes.textLink),
      ),
    );
  }
}
