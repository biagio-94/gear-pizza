import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gearpizza/common/components/custom_button.dart';
import 'package:gearpizza/common/components/custom_input.dart';
import 'package:gearpizza/common/components/custom_switch.dart';
import 'package:gearpizza/common/components/custom_text_button.dart';
import 'package:gearpizza/common/model/dati_contatto.dart';
import 'package:gearpizza/common/styles/font_sizes.dart';
import 'package:gearpizza/common/styles/text_styles.dart';
import 'package:gearpizza/features/documents/bloc/documents_bloc.dart';
import 'package:gearpizza/features/documents/bloc/documents_event.dart';
import 'package:gearpizza/features/documents/bloc/documents_state.dart';
import 'package:gearpizza/features/documents/constants/documents_validator.dart';
import 'package:gearpizza/src/generated/l10n/app_localizations.dart';

class DatiContattoScreen extends StatefulWidget {
  final int idPreventivo;
  const DatiContattoScreen({super.key, required this.idPreventivo});

  @override
  State<DatiContattoScreen> createState() => _DatiContattoScreenState();
}

class _DatiContattoScreenState extends State<DatiContattoScreen> {
  final _formKey = GlobalKey<FormState>();
  final Map<String, TextEditingController> _controllers = {
    'email': TextEditingController(),
    'telefono': TextEditingController(),
    'emailCoobbligato': TextEditingController(),
    'telefonoCoobbligato': TextEditingController(),
  };
  bool isCoobbligatoVisible = false;
  bool isButtonDisabled = false;
  Map<String, String> serverErrors = {};

  @override
  void initState() {
    super.initState();
    context
        .read<DocumentsBloc>()
        .add(InitializeDatiContatto(uuid: widget.idPreventivo.toString()));
    _addListeners();
  }

  @override
  void dispose() {
    _removeListeners();
    super.dispose();
  }

  void _addListeners() {
    _controllers.forEach((campo, controller) {
      controller.addListener(() => _updateButtonState());
    });
  }

  void _removeListeners() {
    _controllers.forEach((_, controller) {
      controller.dispose();
    });
  }

  void _updateButtonState() {
    setState(() {
      isButtonDisabled = !_formKey.currentState!.validate();
    });
  }

  void _handleSubmit() {
    FocusScope.of(context).unfocus();
    if (_formKey.currentState!.validate()) {
      final formData = DatiContatto((b) => b
        ..id = widget.idPreventivo
        ..emailCliente = _controllers['email']!.text.trim()
        ..telCliente = _controllers['telefono']!.text.trim()
        ..emailCoobbligato = isCoobbligatoVisible
            ? _controllers['emailCoobbligato']!.text.trim()
            : ""
        ..telCoobbligato = isCoobbligatoVisible
            ? _controllers['telefonoCoobbligato']!.text.trim()
            : "");

      debugPrint(
          "Payload inviato con idPreventivo ${widget.idPreventivo}: $formData");

      context.read<DocumentsBloc>().add(
            SubmitDatiContattoFormEvent(data: formData),
          );
    }
  }

  void _handleAnonymusSecci() {
    FocusScope.of(context).unfocus();
    if (_formKey.currentState!.validate()) {
      final formData = DatiContatto((b) => b
        ..id = widget.idPreventivo
        ..emailCliente = _controllers['email']!.text.trim()
        ..telCliente = _controllers['telefono']!.text.trim()
        ..emailCoobbligato = isCoobbligatoVisible
            ? _controllers['emailCoobbligato']!.text.trim()
            : ""
        ..telCoobbligato = isCoobbligatoVisible
            ? _controllers['telefonoCoobbligato']!.text.trim()
            : "");

      debugPrint(
          "Payload inviato con idPreventivo ${widget.idPreventivo}: $formData");

      context.read<DocumentsBloc>().add(
            SendAnonymusSecci(data: formData),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocListener(
        listeners: [
          BlocListener<DocumentsBloc, DocumentsState>(
            listener: (context, state) {
              if (state is DatiContattoState) {
                if (state.errors != null) {
                  setState(() {
                    serverErrors = Map.from(state.errors!);
                  });
                }
              }
              // Qui inizializzare navigazione verso i documenti upload ?
            },
          )
        ],
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 20),
                        Text(
                          "DATI DI CONTATTO",
                          style: AppTextStyles.blueTextPageTitleStyle,
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Inserisci i contatti del cliente e, se presente, del co-obbligato",
                          style: AppTextStyles.descriptionPageStyle,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  CustomTextInput(
                    labelText: 'Email',
                    keyboardType: TextInputType.emailAddress,
                    validator: validateEmail,
                    controller: _controllers['email'],
                  ),
                  CustomTextInput(
                    labelText: 'Telefono',
                    keyboardType: TextInputType.phone,
                    validator: validateItalianPhoneNumber,
                    controller: _controllers['telefono'],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomSwitch(
                        accept: isCoobbligatoVisible,
                        onChanged: (value) {
                          setState(() {
                            isCoobbligatoVisible = value;
                          });
                        },
                      ),
                      const Text(
                        'Inserisci Co-obbligato',
                        style: AppTextStyles.smallDescriptionStyle,
                      ),
                    ],
                  ),
                  if (isCoobbligatoVisible) ...[
                    const SizedBox(height: 16),
                    CustomTextInput(
                      labelText: 'Email Co-obbligato',
                      keyboardType: TextInputType.emailAddress,
                      validator: validateEmail,
                      controller: _controllers['emailCoobbligato'],
                    ),
                    const SizedBox(height: 16),
                    CustomTextInput(
                      labelText: 'Telefono Co-obbligato',
                      keyboardType: TextInputType.phone,
                      validator: validateItalianPhoneNumber,
                      controller: _controllers['telefonoCoobbligato'],
                    ),
                  ],
                  const SizedBox(height: 32),
                  CustomButton(
                    label: "Continua",
                    onPressed: () {
                      _handleSubmit();
                    },
                    type: ButtonType.blueFilled,
                  ),
                  SizedBox(height: 6),
                  Text(
                    AppLocalizations.of(context)!.or,
                    style: AppTextStyles.smallDescriptionStyle,
                  ),
                  Center(
                    child: CustomTextButton(
                      label: AppLocalizations.of(context)!.sendPDFSecciAnonymus,
                      onPressed: () {
                        _handleAnonymusSecci();
                      },
                      underlined: true,
                      fontWeight: AppFontSizes.normal,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
