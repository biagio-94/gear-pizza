import 'package:flutter/material.dart';

class CenteredTextDivider extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final Color? lineColor;
  final double lineThickness;
  final double spacing;

  const CenteredTextDivider({
    Key? key,
    required this.text,
    this.textStyle,
    this.lineColor,
    this.lineThickness = 1,
    this.spacing = 8,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color =
        lineColor ?? Theme.of(context).colorScheme.onSurface.withOpacity(0.4);
    final style = textStyle ?? Theme.of(context).textTheme.bodySmall;

    return Row(
      children: [
        Expanded(
          child: Container(
            height: lineThickness,
            color: color,
          ),
        ),
        SizedBox(width: spacing),
        Text(text, style: style, textAlign: TextAlign.center),
        SizedBox(width: spacing),
        Expanded(
          child: Container(
            height: lineThickness,
            color: color,
          ),
        ),
      ],
    );
  }
}
