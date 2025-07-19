import 'package:flutter/material.dart';

class OrderResultScreen extends StatelessWidget {
  final bool success;
  final String message;

  const OrderResultScreen({
    Key? key,
    required this.success,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final icon = success ? Icons.check_circle_outline : Icons.error_outline;
    final color = success ? Colors.green : Colors.red;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Esito Ordine'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 80, color: color),
              const SizedBox(height: 16),
              Text(
                message,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () =>
                    Navigator.of(context).popUntil((route) => route.isFirst),
                child: const Text('Torna alla Home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
