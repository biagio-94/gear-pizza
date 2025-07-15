import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/features/auth/bloc/auth_bloc.dart';
import 'package:gearpizza/features/auth/bloc/auth_event.dart';

void showEnableBiometricDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      title: const Text('Attenzione'),
      content: const Text(
          'Vuoi abilitare l’accesso con impronta per i prossimi accessi?'),
      actions: [
        TextButton(
            onPressed: () => Navigator.of(ctx).pop(), child: const Text('No')),
        TextButton(
          onPressed: () {
            Navigator.of(ctx).pop();
            context.read<AuthBloc>().add(const AuthEnableBiometric(true));
          },
          child: const Text('Si'),
        ),
      ],
    ),
  );
}
