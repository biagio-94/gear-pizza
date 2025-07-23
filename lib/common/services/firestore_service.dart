import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageService {
  final FirebaseStorage _storage;

  FirebaseStorageService({FirebaseStorage? storage})
      : _storage = storage ?? FirebaseStorage.instance;

  // Carica o sovrascrive l'immagine dell'ordine
  Future<String> uploadOrderImage(File file, String orderId) async {
    try {
      // Usa l'orderId come nome del file (per evitare duplicati)
      final fileName = '$orderId.jpg';
      final folderRef = _storage
          .ref()
          .child('orders')
          .child(orderId)
          .child(fileName); // Sovrascrivi il file con lo stesso nome

      // Carica il nuovo file
      await folderRef.putFile(
        file,
        SettableMetadata(contentType: _lookupContentType(fileName)),
      );

      // Restituisci il download URL
      return await folderRef.getDownloadURL();
    } on FirebaseException catch (e) {
      throw Exception(
          'Errore durante l’upload su Firebase Storage: ${e.code} - ${e.message}');
    } catch (e) {
      throw Exception('Errore imprevisto durante uploadFile: $e');
    }
  }

  // Carica o sovrascrive l'immagine del ristorante
  Future<String> uploadRestaurantImage(File file, String restaurantId) async {
    try {
      // Usa il restaurantId come nome del file (per evitare duplicati)
      final fileName = '$restaurantId.jpg';
      final folderRef = _storage
          .ref()
          .child('restaurants')
          .child(restaurantId)
          .child(fileName); // Sovrascrivi il file con lo stesso nome

      // Carica il nuovo file
      await folderRef.putFile(
        file,
        SettableMetadata(contentType: _lookupContentType(fileName)),
      );

      return await folderRef.getDownloadURL();
    } on FirebaseException catch (e) {
      throw Exception('Errore Firebase Storage: ${e.code} - ${e.message}');
    } catch (e) {
      throw Exception('Errore generico durante l’upload: $e');
    }
  }

  // Carica o sovrascrive l'immagine della pizza
  Future<String> uploadPizzaImage(File file, String pizzaId) async {
    try {
      // Usa il pizzaId come nome del file (per evitare duplicati)
      final fileName = '$pizzaId.jpg';
      final folderRef =
          _storage.ref().child('pizzas').child(pizzaId).child(fileName);

      // Carica il nuovo file
      await folderRef.putFile(
        file,
        SettableMetadata(contentType: _lookupContentType(fileName)),
      );

      return await folderRef.getDownloadURL();
    } on FirebaseException catch (e) {
      throw Exception('Errore Firebase Storage: ${e.code} - ${e.message}');
    } catch (e) {
      throw Exception('Errore generico durante l’upload: $e');
    }
  }

  // Elimina l'immagine precedentemente caricata (se necessario)
  Future<void> deleteOrderImage(String orderId) async {
    try {
      final fileName = '$orderId.jpg'; // Nome fisso basato sull'ID
      final ref = _storage.ref().child('orders').child(orderId).child(fileName);
      await ref.delete();
    } on FirebaseException catch (e) {
      throw Exception(
          'Errore durante la cancellazione su Firebase Storage: ${e.code}');
    }
  }

  // Elimina l'immagine della pizza
  Future<void> deletePizzaImage(String pizzaId) async {
    try {
      final fileName = '$pizzaId.jpg'; // Nome fisso basato sull'ID della pizza
      final ref = _storage.ref().child('pizzas').child(pizzaId).child(fileName);
      await ref.delete();
    } on FirebaseException catch (e) {
      throw Exception(
          'Errore durante la cancellazione su Firebase Storage per la pizza: ${e.code}');
    } catch (e) {
      throw Exception(
          'Errore imprevisto durante la cancellazione immagine pizza: $e');
    }
  }

  // Fetch dell'immagine dell'ordine
  Future<String?> fetchOrderImageUrlFromFirebase(String orderId) async {
    try {
      final fileName = '$orderId.jpg'; // Nome fisso basato sull'ID
      final folderRef = _storage.ref().child('orders').child(orderId);
      final listResult = await folderRef.listAll();

      if (listResult.items.isEmpty) {
        return null;
      }

      // Restituisci la URL dell'unico file presente
      final fileRef =
          listResult.items.firstWhere((file) => file.name == fileName);
      return await fileRef.getDownloadURL();
    } on FirebaseException catch (e) {
      throw Exception(
          'Errore durante il fetch da Firebase Storage: ${e.code} - ${e.message}');
    } catch (e) {
      throw Exception('Errore imprevisto durante fetchOrderImageUrl: $e');
    }
  }

  // Fetch dell'immagine del ristorante
  Future<String?> fetchRestaurantImageUrlFromFirebase(
      String restaurantId) async {
    try {
      final fileName = '$restaurantId.jpg'; // Nome fisso basato sull'ID
      final folderRef = _storage.ref().child('restaurants').child(restaurantId);
      final listResult = await folderRef.listAll();

      if (listResult.items.isEmpty) {
        return null;
      }

      // Restituisci la URL dell'unico file presente
      final fileRef =
          listResult.items.firstWhere((file) => file.name == fileName);
      return await fileRef.getDownloadURL();
    } on FirebaseException catch (e) {
      throw Exception(
          'Errore durante il fetch da Firebase Storage: ${e.code} - ${e.message}');
    } catch (e) {
      throw Exception('Errore imprevisto durante fetchOrderImageUrl: $e');
    }
  }

  // Fetch dell'immagine della pizza
  Future<String?> fetchPizzaImageUrlFromFirebase(String pizzaId) async {
    try {
      final fileName = '$pizzaId.jpg'; // Nome fisso basato sull'ID
      final folderRef = _storage.ref().child('pizzas').child(pizzaId);
      final listResult = await folderRef.listAll();

      if (listResult.items.isEmpty) {
        return null;
      }

      // Restituisci la URL dell'unico file presente
      final fileRef =
          listResult.items.firstWhere((file) => file.name == fileName);
      return await fileRef.getDownloadURL();
    } on FirebaseException catch (e) {
      throw Exception(
          'Errore durante il fetch da Firebase Storage: ${e.code} - ${e.message}');
    } catch (e) {
      throw Exception('Errore imprevisto durante fetchOrderImageUrl: $e');
    }
  }

  // Determina il Content-Type in base all’estensione del file
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
