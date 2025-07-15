import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:gearpizza/common/model/dati_contatto.dart';
import 'package:gearpizza/common/model/dati_persona.dart';
import 'package:gearpizza/common/model/dati_reddito.dart';
import 'package:gearpizza/common/model/dati_tessera_sanitaria.dart';

@immutable
abstract class DocumentsEvent {
  const DocumentsEvent();
}

class ProvvisorioPerGenerazioneID extends DocumentsEvent {
  const ProvvisorioPerGenerazioneID();
}

class InitializeDocumentsEvent extends DocumentsEvent {
  final String uuid;
  final int? step;

  const InitializeDocumentsEvent({
    required this.uuid,
    this.step,
  });
}

class InitializeDatiContatto extends DocumentsEvent {
  final String uuid;
  const InitializeDatiContatto({required this.uuid});
}

class UploadDocEvent extends DocumentsEvent {
  final XFile docImage;
  final bool isFront;
  const UploadDocEvent({
    required this.docImage,
    required this.isFront,
  });
}

class UploadBustaPagaDocEvent extends DocumentsEvent {
  final XFile bustaPaga;
  const UploadBustaPagaDocEvent({required this.bustaPaga});
}

class SendDocToServerEvent extends DocumentsEvent {
  const SendDocToServerEvent();
}

class SubmitIdCardFormEvent extends DocumentsEvent {
  final DatiPersona data;
  const SubmitIdCardFormEvent({required this.data});
}

class SubmitTesseraSanitariaFormEvent extends DocumentsEvent {
  final DatiTesseraSanitaria data;
  const SubmitTesseraSanitariaFormEvent({required this.data});
}

class SubmitBustaPagaForm extends DocumentsEvent {
  final DatiReddito data;
  const SubmitBustaPagaForm({required this.data});
}

class ByPassBustapagaEvent extends DocumentsEvent {
  final String uuid;
  const ByPassBustapagaEvent({required this.uuid});
}

class SubmitDatiContattoFormEvent extends DocumentsEvent {
  final DatiContatto data;
  const SubmitDatiContattoFormEvent({required this.data});
}

class ForceBackFromFormStateEvent extends DocumentsEvent {
  const ForceBackFromFormStateEvent();
}

class ForceBackFromDocStepState extends DocumentsEvent {
  final String uuid;
  final int step;
  const ForceBackFromDocStepState({
    required this.uuid,
    required this.step,
  });
}

class FetchProvince extends DocumentsEvent {
  const FetchProvince();
}

class SendAnonymusSecci extends DocumentsEvent {
  final DatiContatto data;
  const SendAnonymusSecci({required this.data});
}

class ClearDocEvent extends DocumentsEvent {
  final int step;
  final bool isFront;
  final bool isBustaPaga;
  const ClearDocEvent(
      {required this.step, required this.isFront, required this.isBustaPaga});
}
