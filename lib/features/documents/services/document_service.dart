import 'dart:typed_data';
import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';
import 'package:gearpizza/common/model/api_error.dart';
import 'package:gearpizza/common/model/dati_contatto.dart';
import 'package:gearpizza/common/model/dati_persona.dart';
import 'package:gearpizza/common/model/dati_reddito.dart';
import 'package:gearpizza/common/model/dati_tessera_sanitaria.dart';
import 'package:gearpizza/common/services/api_service_exception.dart';
import 'package:gearpizza/common/utils/image_squeezer.dart';
import 'package:gearpizza/features/documents/api/documents_endpoint.dart';
import 'package:gearpizza/features/documents/repositories/document_repository.dart';
import 'package:gearpizza/features/documents/services/document_service_exception.dart';
import 'package:image/image.dart' as img;

class PreparedDocument {
  final Uint8List front;
  final Uint8List back;
  final Uint8List pdf;

  PreparedDocument({
    required this.front,
    required this.back,
    required this.pdf,
  });
}

class DocumentService {
  final DocumentRepository _repository;

  DocumentService(this._repository);

  static const int _requiredSize = 500 * 1024;
  static const int _minSize = 800;
  final int _targetWidth = 1200;
  final int _canvasHeight = 800;

  /// Ridimensiona e “letter‑boxa” l’immagine a _targetWidth × _canvasHeight.
  Future<Uint8List> _normalizeImage(Uint8List bytes) async {
    final original = img.decodeImage(bytes);
    if (original == null) {
      throw Exception('Immagine non decodificabile');
    }

    // 1) Calcolo nuova altezza mantenendo aspect ratio
    final newHeight = (original.height * _targetWidth / original.width).round();
    final resized = img.copyResize(
      original,
      width: _targetWidth,
      height: newHeight,
      interpolation: img.Interpolation.average,
    );

    // 3) Riecodifica in JPEG (qualità 85)
    return Uint8List.fromList(img.encodeJpg(resized, quality: 85));
  }

  Future<File?> _createPdf(Uint8List fronteData, Uint8List retroData) async {
    try {
      final pdf = pw.Document();

      // Aggiungi le due immagini al PDF
      pdf.addPage(
        pw.Page(
          build: (pw.Context context) {
            return pw.Column(
              children: [
                pw.Expanded(
                  child: pw.Image(pw.MemoryImage(fronteData),
                      fit: pw.BoxFit.contain),
                ),
                pw.SizedBox(height: 20),
                pw.Expanded(
                  child: pw.Image(pw.MemoryImage(retroData),
                      fit: pw.BoxFit.contain),
                ),
              ],
            );
          },
        ),
      );

      final output = await getTemporaryDirectory();
      final file = File("${output.path}/document.pdf");
      await file.writeAsBytes(await pdf.save());

      return file;
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  Future<dynamic> sendDocumentToOcr({
    required XFile fronte,
    required XFile retro,
    required String uuid,
    required DocType tipoDocumento,
  }) async {
    try {
      // 1. Lettura bytes
      final fBytes = await fronte.readAsBytes();
      final bBytes = await retro.readAsBytes();

      // 2. Compressione
      final fCompressed =
          await ImageSqueezer(fBytes).squeeze(_requiredSize, _minSize);
      final bCompressed =
          await ImageSqueezer(bBytes).squeeze(_requiredSize, _minSize);
      if (fCompressed == null || bCompressed == null) {
        throw Exception('Compressione immagini fallita o timeout.');
      }

      Uint8List pdfBytes = Uint8List(0); // Default vuoto

      // 3. Genera PDF solo se è busta paga
      if (tipoDocumento == DocType.bustaPaga) {
        final File? pdfFile = await _createPdf(fCompressed, bCompressed);
        if (pdfFile == null) {
          throw Exception('Creazione PDF fallita.');
        }
        pdfBytes = await pdfFile.readAsBytes();
      }

      // 4. Prepara DTO
      final prepared = PreparedDocument(
        front: await _normalizeImage(fCompressed),
        back: await _normalizeImage(bCompressed),
        pdf: pdfBytes,
      );

      // 5. Chiamata al repository
      return await _repository.sendToOcr(
        doc: prepared,
        uuid: uuid,
        tipoDocumento: tipoDocumento,
      );
    } catch (e) {
      throw DocumentServiceException(e.toString());
    }
  }

  Future<List<ApiError>?> saveDatiContatto(DatiContatto datiContatto) async {
    try {
      return await _repository.saveDatiContatto(datiContatto: datiContatto);
    } on ApiServiceException catch (_) {
      rethrow;
    } catch (e) {
      throw DocumentServiceException(e.toString());
    }
  }

  Future<DatiPersona?> getIdCardFormData({required int idPreventivo}) async {
    try {
      return await _repository.getIdCardFormData(idPreventivo: idPreventivo);
    } on ApiServiceException catch (_) {
      rethrow;
    } catch (e) {
      throw DocumentServiceException(e.toString());
    }
  }

  Future<List<ApiError>?> saveIdCardData({
    required DatiPersona datiPersona,
    required String uuid,
  }) async {
    try {
      return await _repository.saveIdCardData(
        datiPersona: datiPersona,
        uuid: uuid,
      );
    } on ApiServiceException catch (_) {
      rethrow;
    } catch (e) {
      throw DocumentServiceException(e.toString());
    }
  }

  Future<DatiTesseraSanitaria?> getTesseraFormData(
      {required int idPreventivo}) async {
    try {
      return await _repository.getTesseraFormData(idPreventivo: idPreventivo);
    } on ApiServiceException catch (_) {
      rethrow;
    } catch (e) {
      throw DocumentServiceException(e.toString());
    }
  }

  Future<List<ApiError>?> saveTesseraSanitaria({
    required DatiTesseraSanitaria datitesseraSanitaria,
    required String uuid,
  }) async {
    try {
      return await _repository.saveTesseraSanitaria(
        datitesseraSanitaria: datitesseraSanitaria,
        uuid: uuid,
      );
    } on ApiServiceException catch (_) {
      rethrow;
    } catch (e) {
      throw DocumentServiceException(e.toString());
    }
  }

  Future<List<ApiError>?> saveBustaPaga({
    required DatiReddito datiBustaPaga,
    required String uuid,
  }) async {
    try {
      return await _repository.saveBustaPaga(
        datiBustaPaga: datiBustaPaga,
        uuid: uuid,
      );
    } on ApiServiceException catch (_) {
      rethrow;
    } catch (e) {
      throw DocumentServiceException(e.toString());
    }
  }
}
