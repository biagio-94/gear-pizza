import 'package:flutter/material.dart';
import 'package:gearpizza/common/components/custom_input.dart';
import 'package:gearpizza/common/utils/validator.dart';
import 'package:gearpizza/features/cart/components/address_autocomplete_input.dart';

class OrderFormSection extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController addressController;
  final TextEditingController emailController;
  final TextEditingController nameController;

  const OrderFormSection({
    Key? key,
    required this.formKey,
    required this.addressController,
    required this.emailController,
    required this.nameController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Dati di contatto e consegna', style: theme.textTheme.titleMedium),
        const SizedBox(height: 4),
        Text(
          'Inserisci la tua email e l’indirizzo completo (via, numero civico, CAP e città) per permetterci di contattarti e consegnare al meglio il tuo ordine.',
          style: theme.textTheme.bodySmall,
        ),
        const SizedBox(height: 16),
        Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomTextInput(
                labelText: 'Nome',
                controller: nameController,
                validator: validateName,
                keyboardType: TextInputType.name,
                textCapitalization: TextCapitalization.words,
              ),
              const SizedBox(height: 12),
              CustomTextInput(
                labelText: 'Email',
                controller: emailController,
                validator: validateEmail,
                keyboardType: TextInputType.emailAddress,
                textCapitalization: TextCapitalization.none,
              ),
              const SizedBox(height: 12),
              AddressAutocompleteInput(
                controller: addressController,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
