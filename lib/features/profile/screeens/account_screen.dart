import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/features/profile/bloc/user_account_bloc.dart';
import 'package:gearpizza/features/profile/bloc/user_account_event.dart';
import 'package:gearpizza/features/profile/bloc/user_account_state.dart';
import 'package:go_router/go_router.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  late final TextEditingController _nameController;
  late final TextEditingController _emailController;
  late final FocusNode _nameFocus;
  late final FocusNode _emailFocus;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();

    _nameFocus = FocusNode()..addListener(_onNameFocusChange);
    _emailFocus = FocusNode()..addListener(_onEmailFocusChange);

    // Carica i dati utente
    context.read<UserAccountBloc>().add(LoadUserAccountEvent());
  }

  void _onNameFocusChange() {
    if (!_nameFocus.hasFocus) {
      final newValue = _nameController.text.trim();
      context.read<UserAccountBloc>().add(
            UpdateUserFieldEvent(field: 'full_name', value: newValue),
          );
    }
  }

  void _onEmailFocusChange() {
    if (!_emailFocus.hasFocus) {
      final newValue = _emailController.text.trim();
      context.read<UserAccountBloc>().add(
            UpdateUserFieldEvent(field: 'email', value: newValue),
          );
    }
  }

  @override
  void dispose() {
    _nameFocus.removeListener(_onNameFocusChange);
    _emailFocus.removeListener(_onEmailFocusChange);

    _nameFocus.dispose();
    _emailFocus.dispose();

    _nameController.dispose();
    _emailController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
        centerTitle: true,
      ),
      body: BlocConsumer<UserAccountBloc, UserAccountState>(
        listenWhen: (previous, current) =>
            current is UserAccountFailure || current is UserAccountLoaded,
        listener: (context, state) {
          if (state is UserAccountFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Errore: ${state.message}')),
            );
          } else if (state is UserAccountLoaded) {
            // Aggiorna i controller solo se i testi sono diversi (evita loop)
            if (_nameController.text != state.name) {
              _nameController.text = state.name;
            }
            if (_emailController.text != state.email) {
              _emailController.text = state.email;
            }
          }
        },
        builder: (context, state) {
          if (state is UserAccountLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is UserAccountFailure) {
            // Puoi mostrare un messaggio di errore
            return Center(child: Text('Errore caricamento: ${state.message}'));
          }

          // Tratto UserAccountInitial o Loaded
          final name = (state is UserAccountLoaded) ? state.name.trim() : '';
          final email = (state is UserAccountLoaded) ? state.email.trim() : '';
          final hasUserData = name.isNotEmpty || email.isNotEmpty;

          if (!hasUserData) {
            return _buildEmptyState(context, theme);
          }

          // Stato Loaded con dati validi
          return Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  Text(
                    'Modifica il tuo profilo',
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Aggiorna nome ed email per ricevere le novità e gestire i tuoi ordini in modo semplice.',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 32),
                  TextField(
                    controller: _nameController,
                    focusNode: _nameFocus,
                    decoration: const InputDecoration(
                      labelText: 'Nome completo',
                      hintText: 'Inserisci il tuo nome completo',
                    ),
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _emailController,
                    focusNode: _emailFocus,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'Inserisci la tua email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context, ThemeData theme) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.error,
              size: 80,
              color: theme.colorScheme.primary,
            ),
            const SizedBox(height: 20),
            const Text(
              'Non hai ancora effettuato ordini',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            const Text(
              'Per modificare il tuo profilo, devi prima effettuare almeno un ordine.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {
                context.go("/dashboard");
              },
              icon: Icon(
                Icons.local_pizza_outlined,
                color: theme.colorScheme.onSecondary,
              ),
              label: Text(
                'Inizia ad ordinare !',
                style: TextStyle(color: theme.colorScheme.onSecondary),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.secondary,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
