import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gearpizza/common/components/custom_button.dart';
import 'package:gearpizza/common/components/custom_datepicker.dart';
import 'package:gearpizza/common/components/form_container.dart';
import 'package:gearpizza/common/components/custom_input.dart';
import 'package:gearpizza/common/components/custom_radiobox.dart';
import 'package:gearpizza/common/components/search_comuni_input.dart';
import 'package:gearpizza/common/model/dati_reddito.dart';
import 'package:gearpizza/common/styles/text_styles.dart';
import 'package:gearpizza/common/utils/number_formatter.dart';
import 'package:gearpizza/features/documents/bloc/documents_bloc.dart';
import 'package:gearpizza/features/documents/bloc/documents_event.dart';
import 'package:gearpizza/features/documents/bloc/documents_state.dart';
import 'package:gearpizza/features/documents/constants/documents_validator.dart';
import 'package:gearpizza/features/documents/model/busta_paga_ocr_response.dart';

class BustapagaFormScreen extends StatefulWidget {
  const BustapagaFormScreen({super.key});

  @override
  State<BustapagaFormScreen> createState() => _BustapagaFormScreenState();
}

class _BustapagaFormScreenState extends State<BustapagaFormScreen> {
  final _formKeyBustaPaga = GlobalKey<FormState>();
  bool flagTae = false;
  String? selectedItem;

  final Map<String, TextEditingController> _controllers = {
    'tipoOccupazione': TextEditingController(),
    'annoImpiego': TextEditingController(),
    'meseImpiego': TextEditingController(),
    'reddito': TextEditingController(),
    'datoreLavoro': TextEditingController(),
    'telefonoDatoreLavoro': TextEditingController(),
    'cf_azienda': TextEditingController(),
    'indirizzoLavoro': TextEditingController(),
    'comuneLavoro': TextEditingController(),
    'provinciaLavoro': TextEditingController(),
  };

  // Funzione per popolare i campi del form
  void _populateFormFields(BustaPagaOcrResponse response) {
    if (_controllers['tipoOccupazione']?.text.isEmpty ?? true) {
      _controllers['tipoOccupazione']?.text = "";
    }
    if (_controllers['annoImpiego']?.text.isEmpty ?? true) {
      _controllers['annoImpiego']?.text = "";
    }
    if (_controllers['meseImpiego']?.text.isEmpty ?? true) {
      _controllers['meseImpiego']?.text = "";
    }
    if (_controllers['reddito']?.text.isEmpty ?? true) {
      final retribuzione = response.retribuzioneLorda != 0.0
          ? response.retribuzioneLorda.toString()
          : "";
      _controllers['reddito']?.text = retribuzione;
    }

    if (_controllers['datoreLavoro']?.text.isEmpty ?? true) {
      _controllers['datoreLavoro']?.text = "";
    }
    if (_controllers['telefonoDatoreLavoro']?.text.isEmpty ?? true) {
      _controllers['telefonoDatoreLavoro']?.text = "";
    }
    if (_controllers['cf_azienda']?.text.isEmpty ?? true) {
      _controllers['cf_azienda']?.text =
          response.pivaDatoreLavoro ?? response.codiceFiscale ?? "";
    }
    if (_controllers['indirizzoLavoro']?.text.isEmpty ?? true) {
      _controllers['indirizzoLavoro']?.text = "";
    }
    if (_controllers['provinciaLavoro']?.text.isEmpty ?? true) {
      _controllers['provinciaLavoro']?.text = "";
    }
    if (_controllers['comuneLavoro']?.text.isEmpty ?? true) {
      _controllers['comuneLavoro']?.text = "";
    }
  }

  // Funzione per gestire l'invio del form
  void _handleSubmit() {
    FocusScope.of(context).unfocus();
    if (_formKeyBustaPaga.currentState!.validate()) {
      final documentiBustaRequest = DatiReddito((b) => b
        ..tipoOccupazione = selectedItem
        ..annoImpiego = _controllers['annoImpiego']?.text
        ..meseImpiego = _controllers['meseImpiego']?.text
        ..reddito = double.tryParse(_controllers['reddito']
                ?.text
                .replaceAll(".", "")
                .replaceAll(",", ".") ??
            "")
        ..flagTae = flagTae
        ..datoreLavoro = _controllers['datoreLavoro']?.text
        ..telefonoDatoreLavoro = _controllers['telefonoDatoreLavoro']?.text
        ..cfAzienda = _controllers['cf_azienda']?.text
        ..indirizzoLavoro = _controllers['indirizzoLavoro']?.text
        ..provinciaLavoro = _controllers['provinciaLavoro']?.text
        ..comuneLavoro = _controllers['comuneLavoro']?.text);
      debugPrint(documentiBustaRequest.toString());

      context
          .read<DocumentsBloc>()
          .add(SubmitBustaPagaForm(data: documentiBustaRequest));
    }
  }

  // Costruzione del widget
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
        listeners: [
          BlocListener<DocumentsBloc, DocumentsState>(
            listener: (context, state) {
              if (state is DocumentStepState) {
                context.go("/onboarding/uploadDoc");
              }
              if (state is DocUploadEndState) {
                context.go(
                  "/onboarding/end",
                  extra: {'idPreventivo': state.uuid},
                );
              }
            },
          )
        ],
        child: Scaffold(
          body: FormContainer(
              child: Form(
            key: _formKeyBustaPaga,
            child: BlocBuilder<DocumentsBloc, DocumentsState>(
              builder: (context, state) {
                if (state is BustaPagaFormState) {
                  if (state.bustaPagaOcrResponse != null) {
                    WidgetsBinding.instance.addPostFrameCallback(
                      (timeStamp) {
                        _populateFormFields(state.bustaPagaOcrResponse!);
                      },
                    );
                  }
                }
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 30.0, right: 5, left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "CONTROLLO DOCUMENTALE",
                              style: AppTextStyles.blueTextPageTitleStyle,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "Verifica che i dati rilevati siano corretti. Puoi modificare le informazioni all’interno dei campi.",
                              style: AppTextStyles.descriptionPageStyle,
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                      CustomDatePicker(
                        label: "Data assunzione",
                        validator: (value) {
                          return validateReleaseDate(value, "Data assunzione");
                        },
                        onDateSelected: (value) {
                          final month = value.month.toString();
                          final year = value.year.toString();
                          _controllers['meseImpiego']?.text = month;
                          _controllers['annoImpiego']?.text = year;
                        },
                      ),
                      CustomTextInput(
                        labelText: "Reddito netto mensile",
                        controller: _controllers['reddito'],
                        validator: (value) {
                          if (value != null) {
                            return validateOnlyReddito(value, 'reddito');
                          } else {
                            return null;
                          }
                        },
                        inputFormatters: [CustomDecimalInputFormatter()],
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, left: 8),
                        child: Text(
                          textAlign: TextAlign.left,
                          "Svolgimento attività economica (TAE) collegata a 'COMPRO-VENDO ORO', 'MANDATARIO MARITTIMO', 'MONEY TRANSFER' e/o 'SALE CORSE/CASE DA GIOCO'",
                          style: AppTextStyles.smallDescriptionStyle,
                        ),
                      ),
                      CustomRadio(
                        groupValue: flagTae,
                        onChanged: (value) {
                          setState(() {
                            flagTae = value ?? false;
                          });
                        },
                      ),
                      CustomTextInput(
                          labelText: 'Denominazione datore di lavoro',
                          controller: _controllers['datoreLavoro'],
                          textCapitalization: TextCapitalization.words,
                          keyboardType: TextInputType.text,
                          validator: validateFieldIndirizzo),
                      CustomTextInput(
                        labelText: 'Telefono datore di lavoro',
                        keyboardType: TextInputType.phone,
                        validator: validateItalianPhoneNumber,
                        controller: _controllers['telefonoDatoreLavoro'],
                      ),
                      CustomTextInput(
                        labelText: 'Codice Fiscale (o P.IVA) datore di lavoro',
                        controller: _controllers['cf_azienda'],
                        textCapitalization: TextCapitalization.characters,
                        keyboardType: TextInputType.text,
                        validator: (value) =>
                            validateField(value, 'cf_azienda'),
                      ),
                      SearchComuniInput(
                        isProvince: false,
                        labelText: "Comune lavoro",
                        validator: validateSearchInput,
                        onItemSelected: (value) {
                          _controllers['comuneLavoro']?.text =
                              value['comune'] ?? '';
                          _controllers['provinciaLavoro']?.text =
                              value['provincia'] ?? '';
                        },
                      ),
                      CustomTextInput(
                        labelText: "Indirizzo lavoro",
                        controller: _controllers['indirizzoLavoro'],
                        keyboardType: TextInputType.streetAddress,
                        textCapitalization: TextCapitalization.words,
                        validator: validateFieldIndirizzo,
                      ),
                      const SizedBox(height: 24),
                      Align(
                        alignment: Alignment.center,
                        child: CustomButton(
                            label: "Continua",
                            onPressed: _handleSubmit,
                            type: ButtonType.blueFilled),
                      )
                    ],
                  ),
                );
              },
            ),
          )),
        ));
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controllers.forEach((key, controller) {
      controller.dispose();
    });

    super.dispose();
  }
}
