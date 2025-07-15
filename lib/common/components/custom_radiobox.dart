import 'package:flutter/material.dart';

class CustomRadio extends StatelessWidget {
  final bool groupValue;
  final ValueChanged<bool?> onChanged;

  const CustomRadio({
    super.key,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;

    return Row(
      children: [
        Row(
          children: [
            Radio<bool>(
              value: true,
              groupValue: groupValue,
              onChanged: onChanged,
              activeColor: primaryColor,
            ),
            const Text('SI'),
          ],
        ),
        Row(
          children: [
            Radio<bool>(
              value: false,
              groupValue: groupValue,
              onChanged: onChanged,
              activeColor: primaryColor,
            ),
            const Text('NO'),
          ],
        ),
      ],
    );
  }
}
