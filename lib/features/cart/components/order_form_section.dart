import 'package:flutter/material.dart';
import 'package:gearpizza/common/components/custom_input.dart';
import 'package:gearpizza/common/utils/validator.dart';
import 'package:gearpizza/features/cart/components/address_autocomplete_input.dart';

class OrderFormSection extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController addressController;
  final TextEditingController emailController;

  const OrderFormSection({
    Key? key,
    required this.formKey,
    required this.addressController,
    required this.emailController,
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
                labelText: 'Email',
                controller: emailController,
                validator: validateEmail,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
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
