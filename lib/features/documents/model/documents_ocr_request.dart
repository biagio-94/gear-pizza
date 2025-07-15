import 'package:dio/dio.dart';

class DocumentsOcrRequest {
  final String id;
  final String fronte;
  final String retro;
  final String mergedDocument; // Nuovo campo

  DocumentsOcrRequest({
    required this.id,
    required this.fronte,
    required this.retro,
    required this.mergedDocument,
  });

  /// Crea un'istanza da una mappa (ad esempio per parsing JSON)
  factory DocumentsOcrRequest.fromMap(Map<String, dynamic> map) {
    return DocumentsOcrRequest(
      id: map['id'] as String,
      fronte: map['fronte'] as String,
      retro: map['retro'] as String,
      mergedDocument: map['mergedDocument'] as String,
    );
  }

  /// Converte l'istanza in una mappa (ad esempio per invio API)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'fronte': fronte,
      'retro': retro,
      'mergedDocument': mergedDocument,
    };
  }

  /// Crea un FormData adatto per inviare la richiesta
  Future<FormData> toFormData() async {
    return FormData.fromMap({
      'id': id,
      'fronte': await MultipartFile.fromFile(fronte, filename: "fronte"),
      'retro': await MultipartFile.fromFile(retro, filename: "retro"),
      'mergedDocument': await MultipartFile.fromFile(mergedDocument,
          filename: "mergedDocument.pdf"),
    });
  }

  @override
  String toString() {
    return 'DocumentsOcrRequest(id: $id, fronte: $fronte, retro: $retro, mergedDocument: $mergedDocument)';
  }
}
