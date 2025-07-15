import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:gearpizza/common/bloc/exception_bloc.dart';
import 'package:gearpizza/common/bloc/loading_bloc.dart';
import 'package:gearpizza/common/model/dati_persona.dart';
import 'package:gearpizza/common/model/dati_tessera_sanitaria.dart';
import 'package:gearpizza/common/model/tipo_documento.dart';
import 'package:gearpizza/common/services/api_service_exception.dart';
import 'package:gearpizza/features/documents/api/documents_endpoint.dart';
import 'package:gearpizza/features/documents/bloc/documents_event.dart';
import 'package:gearpizza/features/documents/bloc/documents_state.dart';
import 'package:gearpizza/features/documents/model/busta_paga_ocr_response.dart';
import 'package:gearpizza/features/documents/model/documents_ocr_response.dart';
import 'package:gearpizza/features/documents/model/tessera_sanitaria_ocr_response.dart';
import 'package:gearpizza/features/documents/services/document_service.dart';
import 'package:gearpizza/features/documents/services/document_service_exception.dart';

class DocumentsBloc extends Bloc<DocumentsEvent, DocumentsState> {
  final LoadingBloc loadingBloc = GetIt.instance<LoadingBloc>();
  final ExceptionBloc exceptionBloc = GetIt.instance<ExceptionBloc>();
  final DocumentService documentService;
  DocumentsState? _previousState;
  DocumentsBloc(
    this.documentService,
  ) : super(DatiContattoState()) {
    on<InitializeDocumentsEvent>(_onInitializeDocuments);
    on<UploadDocEvent>(_onUploadDoc);
    on<ClearDocEvent>(_onClearDocEvent);
    on<SendDocToServerEvent>(_onSendDocToServer);
    on<ForceBackFromFormStateEvent>(_onForceBackFromForm);
    on<ForceBackFromDocStepState>(_onForceBackFromUploadPhoto);
    on<InitializeDatiContatto>(_initializeDatiContatto);
    on<SubmitDatiContattoFormEvent>(_onSubmitDatiContattoFormSubmit);
    on<SubmitTesseraSanitariaFormEvent>(_onTesseraFormSubmit);
    on<SubmitIdCardFormEvent>(_onIdCardFormSubmit);
    on<SubmitBustaPagaForm>(_onBustaPagaFormSubmit);
    on<ByPassBustapagaEvent>(_onBypassBustaPaga);
  }

  Future<void> _onInitializeDocuments(
    InitializeDocumentsEvent event,
    Emitter<DocumentsState> emit,
  ) async {
    try {
      loadingBloc.showLoading("Cricamento dati in corso...");
      emit(DocumentStepState(
        uuid: event.uuid,
        step: event.step ?? 1,
      ));
    } on DocumentServiceException catch (e) {
      exceptionBloc.throwExceptionState(e.message);
    } on ApiServiceException catch (e) {
      exceptionBloc.throwExceptionState(e.message);
    } catch (_) {
      exceptionBloc.throwExceptionState(GenericException().message);
    } finally {
      loadingBloc.hideLoading();
    }
  }

  Future<void> _onForceBackFromForm(
    ForceBackFromFormStateEvent event,
    Emitter<DocumentsState> emit,
  ) async {
    try {
      loadingBloc.showLoading("Caricamento stato precedente...");
      // da forzare solo quando si viene dai FORM
      if (_previousState != null) {
        // Emette lo stato precedente salvato
        emit(_previousState!);
        _previousState = null; // Resetta lo stato precedente dopo averlo emesso
      }
    } on DocumentServiceException catch (e) {
      exceptionBloc.throwExceptionState(e.message);
    } on ApiServiceException catch (e) {
      exceptionBloc.throwExceptionState(e.message);
    } catch (_) {
      exceptionBloc.throwExceptionState(GenericException().message);
    } finally {
      loadingBloc.hideLoading();
    }
  }

  Future<void> _onForceBackFromUploadPhoto(
    ForceBackFromDocStepState event,
    Emitter<DocumentsState> emit,
  ) async {
    try {
      loadingBloc.showLoading("Caricamento stato precedente...");
      final step = event.step;
      if (step == 2) {
        List<TipoDocumento> tipiDocumenti =
            []; // creare qui i dropdown tipo documento carta identità tessera o patente di guida

        final DatiPersona? idCardFormData =
            await documentService.getIdCardFormData(
          idPreventivo: int.parse(event.uuid),
        );

        if (idCardFormData != null) {
          final newRequestData = DocumentsOcrResponse.fromOldRequest(
            idCardFormData,
          );
          emit(IdCardFormState(
            uuid: event.uuid,
            tipiDocumenti: tipiDocumenti,
            idCardFormDataResponse: newRequestData,
          ));
        } else {
          throw Exception("Errore caricamento stato precedente");
        }
      } else if (step == 3) {
        final DatiTesseraSanitaria? tesseraFormData =
            await documentService.getTesseraFormData(
          idPreventivo: int.parse(event.uuid),
        );

        final DatiPersona? idCardFormData =
            await documentService.getIdCardFormData(
          idPreventivo: int.parse(event.uuid),
        );

        if (tesseraFormData != null && idCardFormData != null) {
          final newRequestDataTessera =
              TesseraSanitariaOcrResponse.fromOldRequest(tesseraFormData, "");

          emit(TesseraSanitariaFormState(
            uuid: event.uuid,
            idCardFormData: idCardFormData,
            tesseraSanitariaFormResponse: newRequestDataTessera,
          ));
        } else {
          throw Exception("Errore caricamento stato precedente");
        }
      } else {
        throw Exception("Errore caricamento stato precedente");
      }
    } on DocumentServiceException catch (e) {
      exceptionBloc.throwExceptionState(e.message);
    } on ApiServiceException catch (e) {
      exceptionBloc.throwExceptionState(e.message);
    } catch (_) {
      exceptionBloc.throwExceptionState(GenericException().message);
    } finally {
      loadingBloc.hideLoading();
    }
  }

  Future<void> _onUploadDoc(
    UploadDocEvent event,
    Emitter<DocumentsState> emit,
  ) async {
    try {
      loadingBloc.showLoading("Elaborazione dati in corso...");
      final currentState = state as DocumentStepState;

      final bool isFront = event.isFront;

      // Gestione in base allo step e alla posizione (fronte o retro)
      if (currentState.step == 1) {
        // Carta d'identità
        if (isFront) {
          emit(currentState.copyWith(
            idCardFronte: event.docImage,
          ));
        } else {
          emit(currentState.copyWith(
            idCardRetro: event.docImage,
          ));
        }
      } else if (currentState.step == 2) {
        // Tessera sanitaria
        if (isFront) {
          emit(currentState.copyWith(
            tesseraFronte: event.docImage,
          ));
        } else {
          emit(currentState.copyWith(
            tesseraRetro: event.docImage,
          ));
        }
      } else {
        emit(currentState.copyWith(
          bustaPaga: [
            if (currentState.bustaPaga != null) ...currentState.bustaPaga!,
            event.docImage,
          ],
        ));
      }
    } on DocumentServiceException catch (e) {
      exceptionBloc.throwExceptionState(e.message);
    } on ApiServiceException catch (e) {
      exceptionBloc.throwExceptionState(e.message);
    } catch (_) {
      exceptionBloc.throwExceptionState(GenericException().message);
    } finally {
      loadingBloc.hideLoading();
    }
  }

  Future<void> _onSendDocToServer(
    SendDocToServerEvent event,
    Emitter<DocumentsState> emit,
  ) async {
    try {
      // Mostro il loading per indicare l'inizio dell'operazione
      loadingBloc.showLoading('Stiamo analizzando i tuoi documenti...');

      // Recupero lo stato corrente e salvo lo stato precedente se serve per il rollback
      final currentState = state as DocumentStepState;
      _previousState = currentState;

      // Gestisco i diversi step di invio documenti
      if (currentState.step == 1 &&
          currentState.idCardFronte != null &&
          currentState.idCardRetro != null) {
        // STEP 1: Invio dei documenti per la carta d'identità
        final DocumentsOcrResponse? response =
            await documentService.sendDocumentToOcr(
          fronte: currentState.idCardFronte!,
          retro: currentState.idCardRetro!,
          uuid: currentState.uuid,
          // Ottimizzo il controllo: se l'utente è referente, passo il tipo
          // corrispondente, altrimenti decido se è coobbligato o cliente
          tipoDocumento: DocType.idCard,
        );
        debugPrint("Risposta OCR ID card: ${response?.toString()}");

        // Recupero la lista dei tipi di documento (ho deciso di non ottimizzare
        // questo perché credo che la chiamata sia necessaria ogni volta)
        List<TipoDocumento> tipiDocumenti =
            []; // creare qui i dropdown tipo documento carta identità tessera o patente di guida

        // Emetto lo stato aggiornato con i dati ottenuti
        emit(IdCardFormState(
          idCardFormDataResponse: response,
          tipiDocumenti: tipiDocumenti,
          uuid: currentState.uuid,
        ));
      } else if (currentState.step == 2 &&
          currentState.tesseraFronte != null &&
          currentState.tesseraRetro != null) {
        // STEP 2: Invio dei documenti per la tessera sanitaria
        final TesseraSanitariaOcrResponse? response =
            await documentService.sendDocumentToOcr(
          fronte: currentState.tesseraFronte!,
          retro: currentState.tesseraRetro!,
          uuid: currentState.uuid,
          tipoDocumento: DocType.tesseraSanitaria,
        );
        debugPrint("Risposta OCR tessera: ${response?.toString()}");

        // Recupero i dati precedenti solo se l'utente non è referente,
        // perché in caso di referente presumo di non avere questo vincolo.
        DatiPersona? idCardFormData = await documentService.getIdCardFormData(
          idPreventivo: int.parse(currentState.uuid),
        );

        // Emetto lo stato con i dati della tessera e le province (già prelevate)
        emit(TesseraSanitariaFormState(
          uuid: currentState.uuid,
          idCardFormData: idCardFormData,
          tesseraSanitariaFormResponse: response,
        ));
      } else {
        throw Exception("Step non riconosciuto, iniziare da capo");
      }
    } on DocumentServiceException catch (e) {
      // Gestisco le eccezioni specifiche del servizio documentale
      exceptionBloc.throwExceptionState(e.message);
    } on ApiServiceException catch (e) {
      // Gestisco le eccezioni dell'API in modo separato
      exceptionBloc.throwExceptionState(e.message);
    } catch (_) {
      // In ogni altro caso, uso un'eccezione generica
      exceptionBloc.throwExceptionState(GenericException().message);
    } finally {
      // Nascondo il loading, indipendentemente dal risultato
      loadingBloc.hideLoading();
    }
  }

  Future<void> _onClearDocEvent(
    ClearDocEvent event,
    Emitter<DocumentsState> emit,
  ) async {
    try {
      loadingBloc.showLoading('Rimozione documento in corso...');
      final currentState = state as DocumentStepState;

      if (!event.isBustaPaga) {
        if (event.isFront) {
          if (currentState.step == 1) {
            // Elimina solo il fronte della Carta d'identità
            emit(currentState.copyWith(
              removeIdCardFronte: true,
            ));
          } else if (currentState.step == 2) {
            // Elimina solo il fronte della Tessera Sanitaria
            emit(currentState.copyWith(
              removeTesseraFronte: true,
            ));
          }
        } else {
          if (currentState.step == 1) {
            // Elimina solo il retro della Carta d'identità
            emit(currentState.copyWith(
              removeIdCardRetro: true,
            ));
          } else if (currentState.step == 2) {
            // Elimina solo il retro della Tessera Sanitaria
            emit(currentState.copyWith(
              removeTesseraRetro: true,
            ));
          }
        }
      } else {
        // Elimina solo le bustepaga
        emit(currentState.copyWith(
          removeBustaPaga: true,
        ));
      }
    } on DocumentServiceException catch (e) {
      exceptionBloc.throwExceptionState(e.message);
    } on ApiServiceException catch (e) {
      exceptionBloc.throwExceptionState(e.message);
    } catch (_) {
      exceptionBloc.throwExceptionState(GenericException().message);
    } finally {
      loadingBloc.hideLoading();
    }
  }

  Future<void> _onSubmitDatiContattoFormSubmit(
    SubmitDatiContattoFormEvent event,
    Emitter<DocumentsState> emit,
  ) async {
    try {
      loadingBloc.showLoading('Salvataggio dati in corso...');

      final errors = await documentService.saveDatiContatto(event.data);
      final currentState = state as DatiContattoState;
      final errorMap = <String, String>{};
      if (errors != null && errors.isNotEmpty) {
        StringBuffer errorDescriptions = StringBuffer();

        for (var error in errors) {
          if (error.campo != null) {
            errorMap[error.campo!] = error.descrizione!;
            errorDescriptions.writeln();
            errorDescriptions.writeln(error.descrizione!);
          }
        }
        emit(currentState.copyWith(errors: errorMap));

        if (errorDescriptions.isNotEmpty) {
          exceptionBloc.throwExceptionState(errorDescriptions.toString());
        }
      } else {
        final currentState = state as DatiContattoState;
        // qui inizializzazione document state ??
        loadingBloc.hideLoading();
      }
    } on DocumentServiceException catch (e) {
      exceptionBloc.throwExceptionState(e.message);
    } on ApiServiceException catch (e) {
      exceptionBloc.throwExceptionState(e.message);
    } catch (_) {
      exceptionBloc.throwExceptionState(GenericException().message);
    } finally {
      loadingBloc.hideLoading();
    }
  }

  Future<void> _onIdCardFormSubmit(
    SubmitIdCardFormEvent event,
    Emitter<DocumentsState> emit,
  ) async {
    try {
      loadingBloc.showLoading('Salvataggio dati in corso...');

      if (state is IdCardFormState) {
        final currentState = state as IdCardFormState;

        final errors = await documentService.saveIdCardData(
          datiPersona: event.data,
          uuid: currentState.uuid,
        );
        final errorMap = <String, String>{};
        if (errors != null && errors.isNotEmpty) {
          StringBuffer errorDescriptions = StringBuffer();

          for (var error in errors) {
            if (error.campo != null) {
              errorMap[error.campo!] = error.descrizione!;
              errorDescriptions.writeln();
              errorDescriptions.writeln(error.descrizione!);
            }
          }
          debugPrint("errorDescriptions: $errorDescriptions");

          if (errorDescriptions.isNotEmpty) {
            exceptionBloc.throwExceptionState(errorDescriptions.toString());
          }
          final newRequestData = DocumentsOcrResponse.fromOldRequest(
            event.data,
          );

          emit(IdCardFormState(
            uuid: currentState.uuid,
            tipiDocumenti: currentState.tipiDocumenti,
            errors: errorMap,
            idCardFormDataResponse: newRequestData,
          ));
        } else {
          emit(DocumentStepState(
            uuid: currentState.uuid,
            step: 2,
          ));
        }
      } else {
        exceptionBloc.throwExceptionState(
          'Stato corrente non valido per questa operazione',
        );
      }
    } on DocumentServiceException catch (e) {
      exceptionBloc.throwExceptionState(e.message);
    } on ApiServiceException catch (e) {
      exceptionBloc.throwExceptionState(e.message);
    } catch (_) {
      exceptionBloc.throwExceptionState(GenericException().message);
    } finally {
      loadingBloc.hideLoading();
    }
  }

  Future<void> _onTesseraFormSubmit(
    SubmitTesseraSanitariaFormEvent event,
    Emitter<DocumentsState> emit,
  ) async {
    try {
      loadingBloc.showLoading('Salvataggio dati in corso...');
      if (state is TesseraSanitariaFormState) {
        final currentState = state as TesseraSanitariaFormState;

        final errors = await documentService.saveTesseraSanitaria(
          datitesseraSanitaria: event.data,
          uuid: currentState.uuid,
        );
        final errorMap = <String, String>{};
        if (errors != null && errors.isNotEmpty) {
          StringBuffer errorDescriptions = StringBuffer();

          for (var error in errors) {
            if (error.campo != null) {
              errorMap[error.campo!] = error.descrizione!;
              errorDescriptions.writeln();
              errorDescriptions.writeln(error.descrizione!);
            }
          }

          if (errorDescriptions.isNotEmpty) {
            exceptionBloc.throwExceptionState(errorDescriptions.toString());
          }
          final newRequestData = TesseraSanitariaOcrResponse.fromOldRequest(
            event.data,
            currentState.tesseraSanitariaFormResponse!.provinciaNascita ?? "",
          );

          emit(TesseraSanitariaFormState(
            uuid: currentState.uuid,
            tipiDocumenti: currentState.tipiDocumenti,
            errors: errorMap,
            tesseraSanitariaFormResponse: newRequestData,
          ));
        } else {
          emit(DocumentStepState(
            uuid: currentState.uuid,
            step: 3,
          ));
        }
      } else {
        exceptionBloc.throwExceptionState(
          'Stato corrente non valido per questa operazione',
        );
      }
    } on DocumentServiceException catch (e) {
      exceptionBloc.throwExceptionState(e.message);
    } on ApiServiceException catch (e) {
      exceptionBloc.throwExceptionState(e.message);
    } catch (_) {
      exceptionBloc.throwExceptionState(GenericException().message);
    } finally {
      loadingBloc.hideLoading();
    }
  }

  Future<void> _onBustaPagaFormSubmit(
    SubmitBustaPagaForm event,
    Emitter<DocumentsState> emit,
  ) async {
    try {
      loadingBloc.showLoading('Salvataggio dati in corso...');

      if (state is BustaPagaFormState) {
        final currentState = state as BustaPagaFormState;

        final errors = await documentService.saveBustaPaga(
          datiBustaPaga: event.data,
          uuid: currentState.uuid,
        );
        final errorMap = <String, String>{};
        if (errors != null && errors.isNotEmpty) {
          StringBuffer errorDescriptions = StringBuffer();

          for (var error in errors) {
            if (error.campo != null) {
              errorMap[error.campo!] = error.descrizione!;
              errorDescriptions.writeln();
              errorDescriptions.writeln(error.descrizione!);
            }
          }

          if (errorDescriptions.isNotEmpty) {
            exceptionBloc.throwExceptionState(errorDescriptions.toString());
          }
          final newRequestData = BustaPagaOcrResponse.fromOldRequest(
            event.data,
          );

          emit(BustaPagaFormState(
              uuid: currentState.uuid,
              errors: errorMap,
              bustaPagaOcrResponse: newRequestData));
        } else {
          emit(DocUploadEndState(uuid: currentState.uuid));
        }
      } else {
        exceptionBloc.throwExceptionState(
          'Stato corrente non valido per questa operazione',
        );
      }
    } on DocumentServiceException catch (e) {
      exceptionBloc.throwExceptionState(e.message);
    } on ApiServiceException catch (e) {
      exceptionBloc.throwExceptionState(e.message);
    } catch (_) {
      exceptionBloc.throwExceptionState(GenericException().message);
    } finally {
      loadingBloc.hideLoading();
    }
  }

  Future<void> _onBypassBustaPaga(
    ByPassBustapagaEvent event,
    Emitter<DocumentsState> emit,
  ) async {
    try {
      loadingBloc.showLoading('Salvataggio dati in corso...');
      emit(DocUploadEndState(uuid: event.uuid));
    } on DocumentServiceException catch (e) {
      exceptionBloc.throwExceptionState(e.message);
    } on ApiServiceException catch (e) {
      exceptionBloc.throwExceptionState(e.message);
    } catch (_) {
      exceptionBloc.throwExceptionState(GenericException().message);
    } finally {
      loadingBloc.hideLoading();
    }
  }

  Future<void> _initializeDatiContatto(
    InitializeDatiContatto event,
    Emitter<DocumentsState> emit,
  ) async {
    try {
      loadingBloc.showLoading("Initializzazione in corso...");
      emit(DatiContattoState(uuid: event.uuid));
    } on DocumentServiceException catch (e) {
      exceptionBloc.throwExceptionState(e.message);
    } on ApiServiceException catch (e) {
      exceptionBloc.throwExceptionState(e.message);
    } catch (_) {
      exceptionBloc.throwExceptionState(GenericException().message);
    } finally {
      loadingBloc.hideLoading();
    }
  }
}
