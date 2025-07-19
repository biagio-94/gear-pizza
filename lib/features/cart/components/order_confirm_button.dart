import 'package:flutter/material.dart';

class OrderConfirmButton extends StatelessWidget {
  final bool enabled;
  final VoidCallback onPressed;

  const OrderConfirmButton({
    Key? key,
    required this.enabled,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 56,
      child: Opacity(
        opacity: enabled ? 1.0 : 0.5,
        child: FloatingActionButton.extended(
          onPressed: enabled ? onPressed : null,
          backgroundColor: theme.colorScheme.secondary,
          foregroundColor: theme.colorScheme.onSecondary,
          elevation: enabled ? 6 : 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
          label: Center(
            child: Text(
              'Conferma ordine',
              style: theme.textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
