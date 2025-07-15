import 'package:dio/dio.dart';

class BustaPagaOcrRequest {
  final String id;
  final String bustaPaga;

  BustaPagaOcrRequest({required this.id, required this.bustaPaga});

  factory BustaPagaOcrRequest.fromMap(Map<String, dynamic> map) {
    return BustaPagaOcrRequest(
      id: map['id'] as String,
      bustaPaga: map['bustaPaga'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'bustaPaga': bustaPaga,
    };
  }

  /// Metodo per creare un FormData adatto per inviare la richiesta
  Future<FormData> toFormData() async {
    return FormData.fromMap({
      'id': id,
      'bustaPaga':
          await MultipartFile.fromFile(bustaPaga, filename: "bustaPaga"),
    });
  }

  @override
  String toString() {
    return 'BustaPagaOcrRequest(id: $id, bustaPaga: $bustaPaga)';
  }
}
