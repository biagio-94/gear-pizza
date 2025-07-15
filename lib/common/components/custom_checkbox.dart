import 'package:flutter/material.dart';

class CustomCheckbox extends StatelessWidget {
  final bool isChecked;
  final ValueChanged<bool> onChanged;

  const CustomCheckbox({
    super.key,
    required this.isChecked,
    required this.onChanged,
  });

  WidgetStateProperty<Color?> getFillColor(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return WidgetStateProperty.resolveWith<Color?>((states) {
      if (states.contains(WidgetState.selected)) {
        return colorScheme.primary;
      }
      return Colors.transparent;
    });
  }

  WidgetStateProperty<Color> getBorderColor(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return WidgetStateProperty.resolveWith<Color>((states) {
      if (states.contains(WidgetState.selected)) {
        return colorScheme.primary;
      }
      return colorScheme.onSurface.withOpacity(0.6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checkColor: Theme.of(context).colorScheme.onPrimary,
      fillColor: getFillColor(context),
      side: BorderSide(
        color: getBorderColor(context)
            .resolve({isChecked ? WidgetState.selected : WidgetState.disabled}),
        width: 2,
      ),
      value: isChecked,
      onChanged: (bool? value) {
        if (value != null) {
          onChanged(value);
        }
      },
    );
  }
}
