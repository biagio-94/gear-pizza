import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/features/profile/bloc/user_account_bloc.dart';
import 'package:gearpizza/features/profile/bloc/user_account_event.dart';
import 'package:gearpizza/features/profile/bloc/user_account_state.dart';

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
    context.read<UserAccountBloc>().add(LoadUserAccountEvent());
  }

  void _onNameFocusChange() {
    if (!_nameFocus.hasFocus) {
      final newValue = _nameController.text;
      context
          .read<UserAccountBloc>()
          .add(UpdateUserFieldEvent(field: 'full_name', value: newValue));
    }
  }

  void _onEmailFocusChange() {
    if (!_emailFocus.hasFocus) {
      final newValue = _emailController.text;
      context
          .read<UserAccountBloc>()
          .add(UpdateUserFieldEvent(field: 'email', value: newValue));
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _nameFocus.removeListener(_onNameFocusChange);
    _nameFocus.dispose();
    _emailFocus.removeListener(_onEmailFocusChange);
    _emailFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Account'),
          centerTitle: true,
        ),
        body: BlocConsumer<UserAccountBloc, UserAccountState>(
          listenWhen: (previous, current) => current is UserAccountFailure,
          listener: (context, state) {
            if (state is UserAccountFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Errore: ${state.message}')),
              );
            } else if (state is UserAccountLoaded) {
              // Aggiorna i controller solo qui
              _nameController.text = state.name;
              _emailController.text = state.email;
            }
          },
          buildWhen: (previous, current) => current is UserAccountLoaded,
          builder: (context, state) {
            if (state is UserAccountLoaded) {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      controller: _nameController,
                      focusNode: _nameFocus,
                      decoration: const InputDecoration(
                        labelText: 'Nome completo',
                        hintText: 'Inserisci il tuo nome completo',
                      ),
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
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
