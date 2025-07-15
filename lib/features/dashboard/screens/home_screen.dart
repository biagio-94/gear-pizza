import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gearpizza/common/components/custom_button.dart';
import 'package:gearpizza/common/styles/text_styles.dart';

class Client {
  final String id;
  final String name;
  final String lastSessionDate;

  Client({required this.id, required this.name, required this.lastSessionDate});
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final List<Client> _mockClients;

  @override
  void initState() {
    super.initState();
    _mockClients = [
      Client(id: '1', name: 'Mario Rossi', lastSessionDate: '20/06/2025'),
      Client(id: '2', name: 'Luigi Bianchi', lastSessionDate: '18/06/2025'),
      Client(id: '3', name: 'Anna Verdi', lastSessionDate: '15/06/2025'),
      Client(id: '4', name: 'Giulia Neri', lastSessionDate: '10/06/2025'),
    ];
  }

  Future<void> _refreshClients() async {
    // Simula un ritardo di refresh
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      // per mock non cambia nulla
    });
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    final displayName = user?.displayName ?? 'Trainer';
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Ciao, $displayName', style: AppTextStyles.h1(context)),
        backgroundColor: colorScheme.primary,
        actions: [
          IconButton(
            icon: const Icon(Icons.calendar_today),
            onPressed: () => GoRouter.of(context).go('/schedule'),
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => GoRouter.of(context).go('/add-client'),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: _refreshClients,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: _mockClients.isEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Nessun cliente ancora aggiunto',
                          style: AppTextStyles.body(context)),
                      const SizedBox(height: 16),
                      CustomButton(
                        onPressed: () => GoRouter.of(context).go('/add-client'),
                        label: 'Aggiungi Primo Cliente',
                        type: ButtonType.greenFilled,
                        uppercase: false,
                      ),
                    ],
                  ),
                )
              : ListView.separated(
                  itemCount: _mockClients.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    final client = _mockClients[index];
                    return ListTile(
                      tileColor: colorScheme.surface,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      title:
                          Text(client.name, style: AppTextStyles.h1(context)),
                      subtitle:
                          Text('Ultima sessione: ${client.lastSessionDate}'),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () =>
                          GoRouter.of(context).go('/client/${client.id}'),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
