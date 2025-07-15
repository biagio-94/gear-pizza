import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:gearpizza/common/components/custom_button.dart';
import 'package:gearpizza/common/components/custom_datepicker.dart';
import 'package:gearpizza/common/components/custom_dropdown.dart';
import 'package:gearpizza/common/components/form_container.dart';
import 'package:gearpizza/common/components/custom_input.dart';
import 'package:gearpizza/common/components/search_comuni_input.dart';
import 'package:gearpizza/common/model/dati_persona.dart';
import 'package:gearpizza/common/model/dati_tessera_sanitaria.dart';
import 'package:gearpizza/common/styles/text_styles.dart';
import 'package:gearpizza/features/auth/models/auth_gear_pizza_user.dart';
import 'package:gearpizza/features/documents/bloc/documents_bloc.dart';
import 'package:gearpizza/features/documents/bloc/documents_event.dart';
import 'package:gearpizza/features/documents/bloc/documents_state.dart';
import 'package:gearpizza/features/documents/constants/documents_validator.dart';
import 'package:gearpizza/features/documents/documents_utils.dart';
import 'package:gearpizza/features/documents/model/tessera_sanitaria_ocr_response.dart';

class TesseraSanitariaFormScreen extends StatefulWidget {
  const TesseraSanitariaFormScreen({super.key});

  @override
  State<TesseraSanitariaFormScreen> createState() =>
      _TesseraSanitariaFormScreenState();
}

class _TesseraSanitariaFormScreenState
    extends State<TesseraSanitariaFormScreen> {
  final _formKey = GlobalKey<FormState>();

  final Map<String, TextEditingController> _controllers = {
    'nome': TextEditingController(),
    'cognome': TextEditingController(),
    'comuneNascita': TextEditingController(),
    'provinciaNascita': TextEditingController(),
    'codiceFiscale': TextEditingController(),
    'numeroTessera': TextEditingController(),
    'sesso': TextEditingController(),
    'dataNascita': TextEditingController(),
    'dataScadenzaDocumento': TextEditingController(),
  };

  void _populateFormFields(TesseraSanitariaOcrResponse response) {
    if (_controllers['nome']?.text.isEmpty ?? true) {
      _controllers['nome']?.text = response.nome ?? '';
    }
    if (_controllers['cognome']?.text.isEmpty ?? true) {
      _controllers['cognome']?.text = response.cognome ?? '';
    }
    if (_controllers['numeroTessera']?.text.isEmpty ?? true) {
      _controllers['numeroTessera']?.text = response.numeroDocumento ?? '';
    }
    if (_controllers['comuneNascita']?.text.isEmpty ?? true) {
      _controllers['comuneNascita']?.text = response.comuneNascita ?? '';
    }
    if (_controllers['provinciaNascita']?.text.isEmpty ?? true) {
      _controllers['provinciaNascita']?.text = response.provinciaNascita ?? '';
    }
    if (_controllers['codiceFiscale']?.text.isEmpty ?? true) {
      _controllers['codiceFiscale']?.text = response.codiceFiscale ?? '';
    }
    if (_controllers['sesso']?.text.isEmpty ?? true) {
      _controllers['sesso']?.text = response.sesso ?? '';
    }
    if (_controllers['dataNascita']?.text.isEmpty ?? true) {
      _controllers['dataNascita']?.text = formatDate(response.dataNascita);
    }
    if (_controllers['dataScadenzaDocumento']?.text.isEmpty ?? true) {
      _controllers['dataScadenzaDocumento']?.text =
          formatDate(response.dataScadenza);
    }
  }

  void _handleSubmit() {
    FocusScope.of(context).unfocus();
    if (_formKey.currentState!.validate()) {
      final documentiTSRRequest = DatiTesseraSanitaria((b) => b
        ..nome = _controllers['nome']?.text
        ..cognome = _controllers['cognome']?.text
        ..codiceFiscale = _controllers['codiceFiscale']?.text
        ..cittaNascita = _controllers['comuneNascita']?.text
        ..sesso = _controllers['sesso']?.text
        ..dataNascita = int.tryParse(_controllers['dataNascita']?.text ?? "")
        ..dataScadenza =
            int.tryParse(_controllers['dataScadenzaDocumento']?.text ?? "")
        ..numeroTessera = _controllers['numeroTessera']?.text);
      debugPrint("Payload inviato: $documentiTSRRequest");

      context.read<DocumentsBloc>().add(SubmitTesseraSanitariaFormEvent(
            data: documentiTSRRequest,
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<DocumentsBloc, DocumentsState>(
          listener: (context, state) {
            debugPrint("state $state");

            if (state is DocumentStepState) {
              context.go('/onboarding/uploadDoc');
              // Se lo step sarà 3 o altre condizioi qui andrò alla fine deol processo con go.navigate...
            }
          },
        )
      ],
      child: Scaffold(
        body: FormContainer(
          child: Form(
            key: _formKey,
            child: BlocBuilder<DocumentsBloc, DocumentsState>(
              builder: (context, state) {
                TesseraSanitariaOcrResponse ocrResponse =
                    TesseraSanitariaOcrResponse();
                DatiPersona? idCardFormData;

                if (state is TesseraSanitariaFormState) {
                  if (state.tesseraSanitariaFormResponse != null) {
                    ocrResponse = state.tesseraSanitariaFormResponse!;
                    WidgetsBinding.instance.addPostFrameCallback(
                      (timeStamp) {
                        _populateFormFields(
                            state.tesseraSanitariaFormResponse!);
                      },
                    );
                  }
                  if (state.idCardFormData != null) {
                    idCardFormData = state.idCardFormData!;
                  }
                }

                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'CONTROLLO DOCUMENTALE',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Verifica che i dati rilevati siano corretti. Puoi modificare le informazioni all’interno dei campi.',
                              style: AppTextStyles.descriptionPageStyle,
                            ),
                            const SizedBox(height: 16),
                            CustomTextInput(
                              labelText: 'Nome',
                              controller: _controllers['nome'],
                              textCapitalization: TextCapitalization.characters,
                              keyboardType: TextInputType.text,
                              validator: (value) => validateFieldWithExpected(
                                  value, "nome", idCardFormData?.nome),
                            ),
                            CustomTextInput(
                              labelText: 'Cognome',
                              controller: _controllers['cognome'],
                              textCapitalization: TextCapitalization.characters,
                              keyboardType: TextInputType.text,
                              validator: (value) => validateFieldWithExpected(
                                  value, "cognome", idCardFormData?.cognome),
                            ),
                            CustomTextInput(
                              labelText: 'Codice Fiscale',
                              controller: _controllers['codiceFiscale'],
                              textCapitalization: TextCapitalization.characters,
                              keyboardType: TextInputType.text,
                              validator: (value) =>
                                  validateField(value, 'codiceFiscale'),
                            ),
                            CustomTextInput(
                              labelText: 'Numero Tessera',
                              controller: _controllers['numeroTessera'],
                              keyboardType: TextInputType.number,
                              validator: (value) =>
                                  validateTesseraNumber(value, 'numeroTessera'),
                            ),
                            CustomDropdown(
                              label: 'Sesso',
                              initialValue: ocrResponse.sesso ??
                                  _controllers['sesso']?.text,
                              validator: (value) =>
                                  validateFieldOnlyLetters(value, "sesso"),
                              items: const [
                                DropdownMenuItem(
                                    value: "M", child: Text("Maschio")),
                                DropdownMenuItem(
                                    value: "F", child: Text("Femminile")),
                              ],
                              onChanged: (value) {
                                _controllers['sesso']?.text = value ?? '';
                              },
                            ),
                            SearchComuniInput(
                              isProvince: false,
                              labelText: "Comune di Nascita",
                              validator: validateSearchInput,
                              initialValue: ocrResponse.provinciaNascita !=
                                          null &&
                                      ocrResponse.comuneNascita != null
                                  ? {
                                      "provincia": ocrResponse.provinciaNascita,
                                      "comune": ocrResponse.comuneNascita
                                    }
                                  : {
                                      "provincia":
                                          _controllers['provinciaNascita']
                                              ?.text,
                                      "comune":
                                          _controllers['comuneNascita']?.text
                                    },
                              onItemSelected: (value) {
                                _controllers['comuneNascita']?.text =
                                    value['comune'] ?? '';
                                _controllers['provinciaNascita']?.text =
                                    value['provincia'] ?? '';
                              },
                            ),
                            CustomDatePicker(
                              label: "Data di Nascita",
                              initialValue: ocrResponse.dataNascita ??
                                  parseNumericDate(int.tryParse(
                                      _controllers['dataNascita']?.text ?? "")),
                              validator: (date) => validateDate(
                                date,
                                'dataNascita',
                                parseNumericDate(idCardFormData?.dataNascita),
                              ),
                              onDateSelected: (value) {
                                _controllers['dataNascita']?.text =
                                    formatDate(value);
                              },
                            ),
                            CustomDatePicker(
                              label: "Data di scadenza",
                              validator: (date) => validateScadenza(
                                  date, "dataScadenzaDocumento"),
                              initialValue: ocrResponse.dataScadenza ??
                                  parseNumericDate(int.tryParse(
                                      _controllers['dataScadenzaDocumento']
                                              ?.text ??
                                          "")),
                              onDateSelected: (value) {
                                _controllers['dataScadenzaDocumento']?.text =
                                    formatDate(value);
                              },
                            ),
                            const SizedBox(height: 24),
                            Align(
                              alignment: Alignment.center,
                              child: CustomButton(
                                label: "Continua",
                                onPressed: _handleSubmit,
                                type: ButtonType.blueFilled,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
