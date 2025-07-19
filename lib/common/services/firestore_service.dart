import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageService {
  final FirebaseStorage _storage;

  FirebaseStorageService({FirebaseStorage? storage})
      : _storage = storage ?? FirebaseStorage.instance;

  /// Carica [file] sotto il percorso `orders/{orderId}/{fileName}`
  /// e restituisce la URL pubblica per il download.
  Future<String> uploadOrderImage(File file, String orderId) async {
    try {
      final fileName = file.uri.pathSegments.last;
      final ref = _storage.ref().child('orders').child(orderId).child(fileName);

      final uploadTask = ref.putFile(
        file,
        SettableMetadata(
          contentType: _lookupContentType(fileName),
        ),
      );

      final snapshot = await uploadTask;
      return await snapshot.ref.getDownloadURL();
    } on FirebaseException catch (e) {
      throw Exception(
          'Errore durante l’upload su Firebase Storage: ${e.code} - ${e.message}');
    } catch (e) {
      throw Exception('Errore imprevisto durante uploadFile: $e');
    }
  }

  /// Elimina l’immagine precedentemente caricata (se necessario).
  Future<void> deleteOrderImage(String orderId, String fileName) async {
    try {
      final ref = _storage.ref().child('orders').child(orderId).child(fileName);
      await ref.delete();
    } on FirebaseException catch (e) {
      throw Exception(
          'Errore durante la cancellazione su Firebase Storage: ${e.code}');
    }
  }

  /// Restituisce la URL del primo file trovato in `orders/{orderId}`.
  /// Se non esistono file, ritorna null.
  Future<String?> fetchOrderImageUrlFromFirebase(String orderId) async {
    try {
      final folderRef = _storage.ref().child('orders').child(orderId);
      final listResult = await folderRef.listAll();

      if (listResult.items.isEmpty) {
        return null;
      }

      // Prendo il primo file
      final fileRef = listResult.items.first;
      return await fileRef.getDownloadURL();
    } on FirebaseException catch (e) {
      throw Exception(
          'Errore durante il fetch da Firebase Storage: ${e.code} - ${e.message}');
    } catch (e) {
      throw Exception('Errore imprevisto durante fetchOrderImageUrl: $e');
    }
  }

  /// Determina il Content-Type in base all’estensione del file.
  String _lookupContentType(String fileName) {
    final ext = fileName.split('.').last.toLowerCase();
    switch (ext) {
      case 'png':
        return 'image/png';
      case 'jpg':
      case 'jpeg':
        return 'image/jpeg';
      default:
        return 'application/octet-stream';
    }
  }
}
