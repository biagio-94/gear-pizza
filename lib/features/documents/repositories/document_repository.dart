import 'dart:convert';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:gearpizza/common/model/api_error.dart';
import 'package:gearpizza/common/model/dati_contatto.dart';
import 'package:gearpizza/common/model/dati_persona.dart';
import 'package:gearpizza/common/model/dati_reddito.dart';
import 'package:gearpizza/common/model/dati_tessera_sanitaria.dart';
import 'package:gearpizza/common/services/api_service.dart';
import 'package:gearpizza/common/utils/exception_handler.dart';
import 'package:gearpizza/common/utils/serializers.dart';
import 'package:gearpizza/features/documents/api/documents_endpoint.dart';
import 'package:gearpizza/features/documents/model/busta_paga_ocr_response.dart';
import 'package:gearpizza/features/documents/model/documents_ocr_response.dart';
import 'package:gearpizza/features/documents/model/tessera_sanitaria_ocr_response.dart';
import 'package:gearpizza/features/documents/services/document_service.dart';

class DocumentRepository {
  final ApiService _apiService;

  DocumentRepository(this._apiService);

  final FirebaseFunctions _functions = FirebaseFunctions.instance;

  Map<String, dynamic> cleanMap(Map<dynamic, dynamic> raw) {
    final out = <String, dynamic>{};
    raw.forEach((key, value) {
      final k = key.toString();
      if (value is Map) {
        out[k] = cleanMap(Map<dynamic, dynamic>.from(value));
      } else {
        out[k] = value;
      }
    });
    return out;
  }

  Future<dynamic> sendToOcr({
    required PreparedDocument doc,
    required String uuid,
    required DocType tipoDocumento,
  }) async {
    try {
      final functions = FirebaseFunctions.instanceFor(
        region: 'us-central1',
      );

      final callable = functions.httpsCallable('processDocumentOCR');

      final payload = {
        'uuid': uuid,
        'docType': "tesseraSanitaria",
        'frontBase64': base64Encode(doc.front),
        'backBase64': base64Encode(doc.back),
        'mergedPdfBase64': base64Encode(doc.pdf),
      };

      final user = FirebaseAuth.instance.currentUser;
      debugPrint('currentUser: $user');

      final result = await callable.call(payload);

      final rawPayload = result.data['payload'];
      if (rawPayload is! Map) {
        throw FormatException("payload non è una Map: $rawPayload");
      }

      final cleanPayload = cleanMap(Map<dynamic, dynamic>.from(rawPayload));
      debugPrint("🎯 cleanPayload: $cleanPayload");

      switch (tipoDocumento) {
        case DocType.idCard:
          return DocumentsOcrResponse.fromMap(cleanPayload);
        case DocType.tesseraSanitaria:
          return TesseraSanitariaOcrResponse.fromMap(cleanPayload);
        case DocType.bustaPaga:
          return BustaPagaOcrResponse.fromMap(cleanPayload);
      }
    } on FirebaseFunctionsException catch (_) {
      debugPrint("🔥 Errore durante la chiamata alla funzione OCR.");
      throw Exception(
          "Si è verificato un problema durante l'elaborazione del documento. Riprova più tardi.");
    } on FormatException catch (_) {
      debugPrint("❗ Dati ricevuti non nel formato previsto.");
      throw Exception(
          "I dati del documento non sono stati letti correttamente. Verifica che sia ben visibile.");
    } catch (_) {
      debugPrint("❗ Errore generico in sendToOcr: $_");
      throw Exception(
          "Si è verificato un errore imprevisto. Riprova o contatta il supporto.");
    }
  }

  Future<List<ApiError>?> saveDatiContatto({
    required DatiContatto datiContatto,
  }) async {
    try {
      final serializedDatiContatto = standardSerializers.serializeWith(
        DatiContatto.serializer,
        datiContatto,
      );

      Response response = await _apiService.post(
        DocumentEndpoints.saveDatiContatto,
        data: serializedDatiContatto,
      );

      if (response.statusCode == 200) {
        // // Estrarre l'ID dal payload
        final responseData =
            response.data; // Assumendo che `response.data` contenga il payload
        final id = responseData['payload']['id'] as int?; // Estrarre l'ID

        if (id != null) {
          // Effettuare la chiamata per inviare Email ed SMS
          await _apiService.get(DocumentEndpoints.sendEmailAndSMS(id));
        } else {
          throw Exception("ID non trovato nel payload.");
        }

        return null;
      } else if (response.statusCode == 400) {
        final errorData = response.data['errors'];

        final List<ApiError> errors = (errorData as List)
            .map((e) =>
                standardSerializers.deserializeWith(ApiError.serializer, e))
            .where((e) => e != null)
            .cast<ApiError>()
            .toList();

        if (errors.isNotEmpty) {
          return errors;
        } else {
          throw Exception("Errore sconosciuto 400: Nessun errore specificato.");
        }
      } else {
        throw Exception(
            "Failed to save contact data. Status code: ${response.statusCode}");
      }
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<DatiPersona?> getIdCardFormData({required int idPreventivo}) async {
    try {
      Response response = await _apiService
          .get(DocumentEndpoints.getIdCardFormData(idPreventivo));

      if (response.statusCode == 200) {
        final deserializedResponse = standardSerializers.deserializeWith(
            DatiPersona.serializer, response.data)!;
        return deserializedResponse;
      } else {
        return null;
      }
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<List<ApiError>?> saveIdCardData({
    required DatiPersona datiPersona,
    required String uuid,
  }) async {
    try {
      final serializedDatiPersona = standardSerializers.serializeWith(
          DatiPersona.serializer, datiPersona);

      Response response = await _apiService.post(
        "path",
        data: serializedDatiPersona,
      );
      // qui chiamero repository di SUpabase poi rimuovere path api

      if (response.statusCode == 200) {
        return null;
      } else if (response.statusCode == 400) {
        final errorData = response.data['errors'];

        final List<ApiError> errors = (errorData as List)
            .map((e) =>
                standardSerializers.deserializeWith(ApiError.serializer, e))
            .where((e) => e != null)
            .cast<ApiError>()
            .toList();

        if (errors.isNotEmpty) {
          return errors;
        } else {
          throw Exception("Errore sconosciuto 400: Nessun errore specificato.");
        }
      } else {
        throw Exception(
            "Failed to save ID card data. Status code: ${response.statusCode}");
      }
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<DatiTesseraSanitaria?> getTesseraFormData(
      {required int idPreventivo}) async {
    try {
      Response response = await _apiService
          .get(DocumentEndpoints.getTesseraFormData(idPreventivo));

      if (response.statusCode == 200) {
        final deserializedResponse = standardSerializers.deserializeWith(
            DatiTesseraSanitaria.serializer, response.data)!;
        return deserializedResponse;
      } else {
        return null;
      }
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<List<ApiError>?> saveTesseraSanitaria({
    required DatiTesseraSanitaria datitesseraSanitaria,
    required String uuid,
  }) async {
    try {
      final serializedDatiTessera = standardSerializers.serializeWith(
          DatiTesseraSanitaria.serializer, datitesseraSanitaria);

      Response response = await _apiService.post(
        "path",
        data: serializedDatiTessera,
      );

      // qui chiamero repository di SUpabase poi rimuovere path api

      if (response.statusCode == 200) {
        return null;
      } else if (response.statusCode == 400) {
        final errorData = response.data['errors'];

        final List<ApiError> errors = (errorData as List)
            .map((e) =>
                standardSerializers.deserializeWith(ApiError.serializer, e))
            .where((e) => e != null)
            .cast<ApiError>()
            .toList();

        if (errors.isNotEmpty) {
          return errors;
        } else {
          throw Exception("Errore sconosciuto 400: Nessun errore specificato.");
        }
      } else {
        throw Exception(
            "Failed to save Tessera Sanitaria card data. Status code: ${response.statusCode}");
      }
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<List<ApiError>?> saveBustaPaga({
    required DatiReddito datiBustaPaga,
    required String uuid,
  }) async {
    try {
      final serializedDatiReddito = standardSerializers.serializeWith(
        DatiReddito.serializer,
        datiBustaPaga,
      );
      Response response = await _apiService.post(
        DocumentEndpoints.getSaveBustaPaga(
          uuid,
          TipoSoggetto.cliente,
        ),
        data: serializedDatiReddito,
      );

      if (response.statusCode == 200) {
        return null;
      } else if (response.statusCode == 400) {
        final errorData = response.data['errors'];

        final List<ApiError> errors = (errorData as List)
            .map((e) =>
                standardSerializers.deserializeWith(ApiError.serializer, e))
            .where((e) => e != null)
            .cast<ApiError>()
            .toList();

        if (errors.isNotEmpty) {
          return errors;
        } else {
          throw Exception("Errore sconosciuto 400: Nessun errore specificato.");
        }
      } else {
        throw Exception(
            "Failed to save Tessera Sanitaria card data. Status code: ${response.statusCode}");
      }
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } catch (e) {
      throw Exception(e);
    }
  }
}
