import 'package:flutter/material.dart';

class ManageMenuScreen extends StatelessWidget {
  const ManageMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestisci Menu'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Pannello di gestione del menu',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
