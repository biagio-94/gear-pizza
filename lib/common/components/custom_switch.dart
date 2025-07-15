import 'package:flutter/material.dart';

class CustomSwitch extends StatelessWidget {
  final bool accept;
  final ValueChanged<bool> onChanged;

  const CustomSwitch({
    super.key,
    required this.accept,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Switch(
      value: accept,
      activeColor: colorScheme.onPrimary,
      activeTrackColor: colorScheme.secondary, // ad esempio per il "success"
      inactiveThumbColor: Colors.white,
      inactiveTrackColor: Colors.grey,
      trackOutlineColor:
          WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
        return Colors.grey.withOpacity(0.48);
      }),
      onChanged: onChanged,
    );
  }
}
