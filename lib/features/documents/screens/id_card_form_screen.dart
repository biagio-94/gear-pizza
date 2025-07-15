import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gearpizza/common/components/custom_button.dart';
import 'package:gearpizza/common/components/custom_datepicker.dart';
import 'package:gearpizza/common/components/custom_dropdown.dart';
import 'package:gearpizza/common/components/custom_input.dart';
import 'package:gearpizza/common/components/search_comuni_input.dart';
import 'package:gearpizza/common/model/dati_persona.dart';
import 'package:gearpizza/common/styles/font_sizes.dart';
import 'package:gearpizza/common/styles/text_styles.dart';
import 'package:gearpizza/features/documents/bloc/documents_bloc.dart';
import 'package:gearpizza/features/documents/bloc/documents_event.dart';
import 'package:gearpizza/features/documents/bloc/documents_state.dart';
import 'package:gearpizza/features/documents/constants/documents_validator.dart';
import 'package:gearpizza/features/documents/constants/paesi_comunita_europea.dart';
import 'package:gearpizza/features/documents/documents_utils.dart';
import 'package:gearpizza/features/documents/model/documents_ocr_response.dart';

import '../../../common/components/form_container.dart';

class IdCardFormScreen extends StatefulWidget {
  const IdCardFormScreen({super.key});

  @override
  State<IdCardFormScreen> createState() => _IdCardFormScreenState();
}

class _IdCardFormScreenState extends State<IdCardFormScreen> {
  final _formKey = GlobalKey<FormState>();
  bool isSameAsResidenza = true;

  final Map<String, TextEditingController> _controllers = {
    'nome': TextEditingController(),
    'cognome': TextEditingController(),
    'numeroDocumento': TextEditingController(),
    'dataNascita': TextEditingController(),
    'dataRilascio': TextEditingController(),
    'dataScadenzaDocumento': TextEditingController(),
    'comuneRilascio': TextEditingController(),
    'provinciaRilascio': TextEditingController(),
    'comuneNascita': TextEditingController(),
    'provinciaNascita': TextEditingController(),
    'comuneResidenza': TextEditingController(),
    'provinciaResidenza': TextEditingController(),
    'nazionalita': TextEditingController(),
    'tipoDocumento': TextEditingController(),
    'indirizzoResidenza': TextEditingController(),
    'capResidenzaController': TextEditingController(),
  };

  void _populateFormFields(DocumentsOcrResponse ocrResponse) {
    debugPrint("ocrResponse $ocrResponse");
    _controllers['nome']?.text = ocrResponse.nome ?? '';
    _controllers['cognome']?.text = ocrResponse.cognome ?? '';
    _controllers['numeroDocumento']?.text = ocrResponse.numeroDocumento ?? '';
    _controllers['nazionalita']?.text =
        getTipoCittadinanza(ocrResponse.cittadinanza) ?? 'I';
    _controllers['comuneNascita']?.text = ocrResponse.comuneNascita ?? '';
    _controllers['provinciaNascita']?.text = ocrResponse.provinciaNascita ?? '';
    _controllers['comuneRilascio']?.text = ocrResponse.comuneRilascio ?? '';
    _controllers['provinciaRilascio']?.text =
        ocrResponse.provinciaRilascio ?? '';
    _controllers['comuneResidenza']?.text = ocrResponse.comuneResidenza ?? '';
    _controllers['provinciaResidenza']?.text =
        ocrResponse.provinciaResidenza ?? '';
    _controllers['indirizzoResidenza']?.text =
        ocrResponse.indirizzoResidenza ?? '';
    _controllers['capResidenzaController']?.text =
        ocrResponse.capResidenza != null
            ? ocrResponse.capResidenza.toString()
            : '';
    _controllers['tipoDocumento']?.text =
        mapFromOcrToTipoDoc(ocrResponse.tipologia) ?? 'CAR';
    _controllers['dataNascita']?.text = formatDate(ocrResponse.dataNascita);
    _controllers['dataRilascio']?.text = formatDate(ocrResponse.dataRilascio);
    _controllers['dataScadenzaDocumento']?.text =
        formatDate(ocrResponse.dataScadenza);
  }

  void _handleSubmit() {
    FocusScope.of(context).unfocus();
    if (_formKey.currentState!.validate()) {
      final documentiCDIRequest = DatiPersona((b) => b
        ..nome = _controllers['nome']?.text
        ..cognome = _controllers['cognome']?.text
        ..nazionalita = _controllers['nazionalita']?.text
        ..provinciaNascita = _controllers['provinciaNascita']?.text
        ..comuneNascita = _controllers['comuneNascita']?.text
        ..comuneRilascioDocumento = _controllers['comuneRilascio']?.text
        ..dataNascita = int.tryParse(_controllers['dataNascita']?.text ?? "")
        ..dataRilascioDocumento =
            int.tryParse(_controllers['dataRilascio']?.text ?? "")
        ..dataScadenzaDocumento =
            int.tryParse(_controllers['dataScadenzaDocumento']?.text ?? "")
        ..comuneResidenza = _controllers['comuneResidenza']?.text
        ..tipoDocumento = _controllers['tipoDocumento']?.text
        ..provinciaDiResidenza = _controllers['provinciaResidenza']?.text
        ..indirizzoResidenza = _controllers['indirizzoResidenza']?.text
        ..capResidenza =
            int.tryParse(_controllers['capResidenzaController']?.text ?? "")
        ..numeroDocumento = _controllers['numeroDocumento']?.text);

      debugPrint("Payload inviato: $documentiCDIRequest");
      context.read<DocumentsBloc>().add(SubmitIdCardFormEvent(
            data: documentiCDIRequest,
          ));
    }
  }

  List<DropdownMenuItem<String>> _buildDocTypesDropdown() {
    return const [
      DropdownMenuItem(
        value: 'CAR',
        child: Text("Carta d'identità"),
      ),
      DropdownMenuItem(
        value: 'PAS',
        child: Text("Passaporto"),
      ),
      DropdownMenuItem(
        value: 'PAT',
        child: Text("Patente di guida"),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<DocumentsBloc, DocumentsState>(
          listener: (context, state) {
            if (state is DocumentStepState) {
              context.go('/uploadDoc');
            }
          },
        )
      ],
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            title: const Text(
              'Controlla i dati del documento',
              style: TextStyle(fontSize: 16),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: const BackButtonIcon(),
              onPressed: () {
                // 1) mando l'evento al bloc
                context
                    .read<DocumentsBloc>()
                    .add(ForceBackFromFormStateEvent());
                // 2) chiudo la pagina
                Navigator.of(context).pop();
              },
            ),
            centerTitle: true,
          ),
          body: FormContainer(
            child: Form(
              key: _formKey,
              child: BlocBuilder<DocumentsBloc, DocumentsState>(
                builder: (context, state) {
                  DocumentsOcrResponse ocrResponse = DocumentsOcrResponse();

                  if (state is IdCardFormState) {
                    if (state.idCardFormDataResponse != null) {
                      ocrResponse = state.idCardFormDataResponse!;
                      debugPrint("ocrResponse: $ocrResponse");
                      WidgetsBinding.instance.addPostFrameCallback(
                        (timeStamp) {
                          _populateFormFields(state.idCardFormDataResponse!);
                        },
                      );
                    }
                  }

                  return SingleChildScrollView(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 30.0, right: 16, left: 16, bottom: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Assicurati che le informazioni rilevate siano corrette. Se necessario, modifica i campi sottostanti.",
                              style:
                                  AppTextStyles.descriptionPageStyle.copyWith(
                                color: Theme.of(context).colorScheme.onSurface,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomTextInput(
                        labelText: 'Numero Documento',
                        controller: _controllers['numeroDocumento'],
                        textCapitalization: TextCapitalization.characters,
                        keyboardType: TextInputType.text,
                        validator: (value) =>
                            validateField(value, "numeroDocumento"),
                      ),
                      CustomTextInput(
                        labelText: 'Nome',
                        controller: _controllers['nome'],
                        textCapitalization: TextCapitalization.characters,
                        keyboardType: TextInputType.text,
                        validator: (value) =>
                            validateFieldOnlyLetters(value, "nome"),
                      ),
                      CustomTextInput(
                        labelText: 'Cognome',
                        controller: _controllers['cognome'],
                        textCapitalization: TextCapitalization.characters,
                        keyboardType: TextInputType.text,
                        validator: (value) =>
                            validateFieldOnlyLetters(value, "cognome"),
                      ),
                      CustomDropdown(
                        label: "Nazionalità",
                        initialValue:
                            getTipoCittadinanza(ocrResponse.cittadinanza) ??
                                _controllers['nazionalita']?.text,
                        validator: (value) =>
                            validateFieldOnlyLetters(value, "nazionalita"),
                        items: const [
                          DropdownMenuItem(value: "I", child: Text("Italiana")),
                          DropdownMenuItem(
                              value: "C", child: Text("Comunitaria")),
                          DropdownMenuItem(
                              value: "E", child: Text("Extra Comunitaria")),
                        ],
                        onChanged: (value) {
                          _controllers['nazionalita']?.text = value ?? '';
                        },
                      ),
                      CustomDropdown(
                        label: "Tipo documento",
                        initialValue:
                            mapFromOcrToTipoDoc(ocrResponse.tipologia) ??
                                _controllers['tipoDocumento']?.text,
                        items: _buildDocTypesDropdown(),
                        validator: (value) =>
                            validateFieldOnlyLetters(value, "tipoDocumento"),
                        onChanged: (value) {
                          _controllers['tipoDocumento']?.text = value ?? '';
                        },
                      ),
                      CustomDatePicker(
                        label: "Data di Nascita",
                        initialValue: ocrResponse.dataNascita ??
                            parseNumericDate(int.tryParse(
                                _controllers['dataNascita']?.text ?? "")),
                        validator: (date) =>
                            validateBirthDate(date, 'dataNascita'),
                        onDateSelected: (value) {
                          _controllers['dataNascita']?.text = formatDate(value);
                        },
                      ),
                      CustomDatePicker(
                        label: "Data di rilascio",
                        validator: (date) =>
                            validateReleaseDate(date, 'dataRilascioDocumento'),
                        initialValue: ocrResponse.dataRilascio ??
                            parseNumericDate(int.tryParse(
                                _controllers['dataRilascio']?.text ?? "")),
                        onDateSelected: (value) {
                          _controllers['dataRilascio']?.text =
                              formatDate(value);
                        },
                      ),
                      CustomDatePicker(
                        label: "Data di scadenza",
                        validator: (date) =>
                            validateScadenza(date, "dataScadenzaDocumento"),
                        initialValue: ocrResponse.dataScadenza ??
                            parseNumericDate(int.tryParse(
                                _controllers['dataScadenzaDocumento']?.text ??
                                    "")),
                        onDateSelected: (value) {
                          _controllers['dataScadenzaDocumento']?.text =
                              formatDate(value);
                        },
                      ),
                      SearchComuniInput(
                        isProvince: false,
                        validator: validateSearchInput,
                        labelText: "Comune di Rilascio",
                        initialValue: ocrResponse.comuneRilascio != null
                            ? {
                                "provincia": "",
                                "comune": ocrResponse.comuneRilascio
                              }
                            : {
                                "provincia":
                                    _controllers['provinciaRilascio']?.text,
                                "comune": _controllers['comuneRilascio']?.text
                              },
                        onItemSelected: (value) {
                          _controllers['comuneRilascio']?.text =
                              value['comune'] ?? '';
                          _controllers['provinciaRilascio']?.text =
                              value['provincia'] ?? '';
                        },
                      ),
                      SearchComuniInput(
                        isProvince: false,
                        labelText: "Comune di Nascita",
                        validator: validateSearchInput,
                        initialValue: ocrResponse.provinciaNascita != null &&
                                ocrResponse.comuneNascita != null
                            ? {
                                "provincia": ocrResponse.provinciaNascita,
                                "comune": ocrResponse.comuneNascita
                              }
                            : {
                                "provincia":
                                    _controllers['provinciaNascita']?.text,
                                "comune": _controllers['comuneNascita']?.text
                              },
                        onItemSelected: (value) {
                          _controllers['comuneNascita']?.text =
                              value['comune'] ?? '';
                          _controllers['provinciaNascita']?.text =
                              value['provincia'] ?? '';
                        },
                      ),
                      SearchComuniInput(
                        isProvince: false,
                        validator: validateSearchInput,
                        labelText: "Comune di Residenza",
                        initialValue: ocrResponse.provinciaResidenza != null &&
                                ocrResponse.comuneResidenza != null
                            ? {
                                "provincia": ocrResponse.provinciaResidenza,
                                "comune": ocrResponse.comuneResidenza
                              }
                            : {
                                "provincia":
                                    _controllers['provinciaResidenza']?.text,
                                "comune": _controllers['comuneResidenza']?.text
                              },
                        onItemSelected: (value) {
                          _controllers['comuneResidenza']?.text =
                              value['comune'] ?? '';
                          _controllers['provinciaResidenza']?.text =
                              value['provincia'] ?? '';
                        },
                      ),
                      CustomTextInput(
                          labelText: "Indirizzo Residenza",
                          controller: _controllers['indirizzoResidenza'],
                          keyboardType: TextInputType.streetAddress,
                          textCapitalization: TextCapitalization.words,
                          validator: validateFieldIndirizzo),
                      CustomTextInput(
                          labelText: "CAP Residenza",
                          controller: _controllers['capResidenzaController'],
                          keyboardType: TextInputType.number,
                          validator: (value) => validateItalianCAP(value)),
                      const SizedBox(height: 24),
                      Align(
                        alignment: Alignment.center,
                        child: CustomButton(
                            label: "Continua",
                            onPressed: _handleSubmit,
                            type: ButtonType.blueFilled),
                      ),
                      const SizedBox(height: 24),
                    ],
                  ));
                },
              ),
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
