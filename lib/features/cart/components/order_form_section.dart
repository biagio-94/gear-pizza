import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/common/components/custom_input.dart';
import 'package:gearpizza/common/utils/validator.dart';
import 'package:gearpizza/features/cart/bloc/cart_bloc.dart';
import 'package:gearpizza/features/cart/bloc/cart_state.dart';
import 'package:gearpizza/features/cart/components/address_autocomplete_input.dart';

class OrderFormSection extends StatefulWidget {
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
  State<OrderFormSection> createState() => _OrderFormSectionState();
}

class _OrderFormSectionState extends State<OrderFormSection> {
  late bool isEmailEditable;
  late bool isNameEditable;

  @override
  void initState() {
    super.initState();

    isEmailEditable = widget.emailController.text.isEmpty;
    isNameEditable = widget.nameController.text.isEmpty;
  }

  void _prefillIfNeeded(CartLoadedState state) {
    debugPrint("[_prefillIfNeeded] Called");
    debugPrint("[_prefillIfNeeded] state.fullName: ${state.fullName}");
    debugPrint("[_prefillIfNeeded] state.emailAddress: ${state.emailAddress}");
    debugPrint(
        "[_prefillIfNeeded] nameController.text (before): ${widget.nameController.text}");
    debugPrint(
        "[_prefillIfNeeded] emailController.text (before): ${widget.emailController.text}");

    bool updated = false;

    if (state.fullName != null &&
        state.fullName!.isNotEmpty &&
        widget.nameController.text.isEmpty) {
      widget.nameController.text = state.fullName!;
      isNameEditable = false;
      debugPrint(
          "[_prefillIfNeeded] nameController.text updated to: ${widget.nameController.text}");
      updated = true;
    }

    if (state.emailAddress != null &&
        state.emailAddress!.isNotEmpty &&
        widget.emailController.text.isEmpty) {
      widget.emailController.text = state.emailAddress!;
      isEmailEditable = false;
      debugPrint(
          "[_prefillIfNeeded] emailController.text updated to: ${widget.emailController.text}");
      updated = true;
    }

    if (updated) {
      setState(() {
        debugPrint("[_prefillIfNeeded] setState triggered");
      });
    } else {
      debugPrint("[_prefillIfNeeded] No changes made, setState not called");
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        if (state is CartLoadedState) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _prefillIfNeeded(state);
          });
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Dati di contatto e consegna',
                style: theme.textTheme.titleMedium),
            const SizedBox(height: 4),
            Text(
              'Inserisci la tua email e l’indirizzo completo '
              '(via, numero civico, CAP e città) per permetterci '
              'di contattarti e consegnare al meglio il tuo ordine.',
              style: theme.textTheme.bodySmall,
            ),
            const SizedBox(height: 16),
            Form(
              key: widget.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomTextInput(
                    labelText: 'Nome',
                    controller: widget.nameController,
                    validator: validateName,
                    keyboardType: TextInputType.name,
                    textCapitalization: TextCapitalization.words,
                    enabled: isNameEditable,
                  ),
                  const SizedBox(height: 12),
                  CustomTextInput(
                    labelText: 'Email',
                    controller: widget.emailController,
                    validator: validateEmail,
                    keyboardType: TextInputType.emailAddress,
                    textCapitalization: TextCapitalization.none,
                    enabled: isEmailEditable,
                  ),
                  const SizedBox(height: 12),
                  AddressAutocompleteInput(
                    controller: widget.addressController,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
