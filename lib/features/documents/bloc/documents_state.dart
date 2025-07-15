import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:gearpizza/common/model/dati_persona.dart';
import 'package:gearpizza/common/model/tipo_documento.dart';
import 'package:gearpizza/features/documents/model/busta_paga_ocr_response.dart';
import 'package:gearpizza/features/documents/model/documents_ocr_response.dart';
import 'package:gearpizza/features/documents/model/tessera_sanitaria_ocr_response.dart';

@immutable
abstract class DocumentsState {
  const DocumentsState();
}

class DatiContattoState extends DocumentsState {
  final String? uuid;
  final String? email;
  final String? telefono;

  final Map<String, String>? errors;

  const DatiContattoState({
    this.uuid,
    this.email,
    this.telefono,
    this.errors,
  });

  DatiContattoState copyWith({
    String? uuid,
    String? email,
    String? telefono,
    String? emailCoobbligato,
    String? telefonoCoobbligato,
    bool? needsCoobbligato,
    Map<String, String>? errors,
  }) {
    return DatiContattoState(
      uuid: uuid ?? this.uuid,
      email: email ?? this.email,
      telefono: telefono ?? this.telefono,
      errors: errors ?? this.errors,
    );
  }
}

class DatiContattoErrorFormState extends DocumentsState {
  final Map<String, String>? errors;
  const DatiContattoErrorFormState(this.errors);
}

class InitializeDocumentStepState extends DocumentsState {}

class DocumentStepState extends DocumentsState {
  final String uuid;
  final int step;
  // Carta d'identità
  final XFile? idCardFronte;
  final XFile? idCardRetro;

  // Tessera sanitaria
  final XFile? tesseraFronte;
  final XFile? tesseraRetro;

  // Busta paga
  final List<XFile>? bustaPaga;

  const DocumentStepState({
    required this.uuid,
    required this.step,
    this.idCardFronte,
    this.idCardRetro,
    this.tesseraFronte,
    this.tesseraRetro,
    this.bustaPaga,
  });

  DocumentStepState copyWith({
    String? uuid,
    int? step,
    bool? isDocUploadFinished,
    XFile? idCardFronte,
    bool removeIdCardFronte = false,
    XFile? idCardRetro,
    bool removeIdCardRetro = false,
    XFile? tesseraFronte,
    bool removeTesseraFronte = false,
    XFile? tesseraRetro,
    bool removeTesseraRetro = false,
    List<XFile>? bustaPaga,
    bool removeBustaPaga = false,
  }) {
    return DocumentStepState(
      uuid: uuid ?? this.uuid,
      step: step ?? this.step,
      idCardFronte:
          removeIdCardFronte ? null : (idCardFronte ?? this.idCardFronte),
      idCardRetro: removeIdCardRetro ? null : (idCardRetro ?? this.idCardRetro),
      tesseraFronte:
          removeTesseraFronte ? null : (tesseraFronte ?? this.tesseraFronte),
      tesseraRetro:
          removeTesseraRetro ? null : (tesseraRetro ?? this.tesseraRetro),
      bustaPaga: removeBustaPaga ? null : (bustaPaga ?? this.bustaPaga),
    );
  }
}

class IdCardFormState extends DocumentsState {
  final String uuid;
  final DocumentsOcrResponse? idCardFormDataResponse;
  final List<TipoDocumento>? tipiDocumenti;
  final Map<String, String>? errors;

  const IdCardFormState({
    required this.uuid,
    this.idCardFormDataResponse,
    this.tipiDocumenti,
    this.errors,
  });

  // Metodo copyWith
  IdCardFormState copyWith({
    String? uuid,
    DocumentsOcrResponse? idCardFormDataResponse,
    List<TipoDocumento>? tipiDocumenti,
    Map<String, String>? errors,
  }) {
    return IdCardFormState(
      uuid: uuid ?? this.uuid,
      idCardFormDataResponse:
          idCardFormDataResponse ?? this.idCardFormDataResponse,
      tipiDocumenti: tipiDocumenti ?? this.tipiDocumenti,
      errors: errors ?? this.errors,
    );
  }
}

class TesseraSanitariaFormState extends DocumentsState {
  final String uuid;
  final TesseraSanitariaOcrResponse? tesseraSanitariaFormResponse;
  final DatiPersona? idCardFormData;
  final List<TipoDocumento>? tipiDocumenti;
  final Map<String, String>? errors;

  const TesseraSanitariaFormState({
    required this.uuid,
    this.tesseraSanitariaFormResponse,
    this.tipiDocumenti,
    this.idCardFormData,
    this.errors,
  });

  // Metodo copyWith
  TesseraSanitariaFormState copyWith({
    String? uuid,
    TesseraSanitariaOcrResponse? tesseraSanitariaFormResponse,
    final DatiPersona? idCardFormData,
    List<TipoDocumento>? tipiDocumenti,
    Map<String, String>? errors,
  }) {
    return TesseraSanitariaFormState(
      uuid: uuid ?? this.uuid,
      tesseraSanitariaFormResponse: tesseraSanitariaFormResponse,
      tipiDocumenti: tipiDocumenti ?? this.tipiDocumenti,
      errors: errors,
      idCardFormData: idCardFormData,
    );
  }
}

class BustaPagaFormState extends DocumentsState {
  final String uuid;
  final BustaPagaOcrResponse? bustaPagaOcrResponse;
  final Map<String, String>? errors;

  const BustaPagaFormState({
    required this.uuid,
    this.bustaPagaOcrResponse,
    this.errors,
  });

  // Metodo copyWith
  BustaPagaFormState copyWith({
    String? uuid,
    BustaPagaOcrResponse? bustaPagaOcrResponse,
    Map<String, String>? errors,
  }) {
    return BustaPagaFormState(
      uuid: uuid ?? this.uuid,
      bustaPagaOcrResponse: bustaPagaOcrResponse ?? this.bustaPagaOcrResponse,
      errors: errors ?? this.errors,
    );
  }
}

class DocUploadEndState extends DocumentsState {
  final String uuid;
  const DocUploadEndState({required this.uuid});
}

class ReferenteDocUploadEndState extends DocumentsState {
  final String uuid;
  const ReferenteDocUploadEndState({required this.uuid});
}
