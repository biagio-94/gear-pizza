import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';

class ImageSqueezer {
  final Uint8List data;

  ImageSqueezer(this.data);

  /// Metodo statico per comprimere un'immagine
  static Future<Uint8List> compressWithList(
    Uint8List image, {
    int minWidth = 1920,
    int minHeight = 1080,
    int quality = 95,
    int rotate = 0,
    int inSampleSize = 1,
    bool autoCorrectionAngle = true,
    CompressFormat format = CompressFormat.jpeg,
    bool keepExif = false,
  }) async {
    return await FlutterImageCompress.compressWithList(
      image,
      minWidth: minWidth,
      minHeight: minHeight,
      quality: quality,
      rotate: rotate,
      inSampleSize: inSampleSize,
      autoCorrectionAngle: autoCorrectionAngle,
      format: format,
      keepExif: keepExif,
    );
  }

  /// Metodo asincrono per comprimere e ridimensionare l'immagine
  /// [requiredSize] è la dimensione massima desiderata in byte.
  /// [minSize] è la dimensione minima consentita per l'immagine (in pixel).
  Future<Uint8List?> squeeze(int requiredSize, int minSize) async {
    try {
      var result = data;

      // Timeout di 45 secondi
      bool timeoutExpired = false;
      Future.delayed(const Duration(seconds: 45), () => timeoutExpired = true);

      // Controlla se l'immagine è già sotto il limite richiesto
      if (result.length <= requiredSize) {
        return result;
      }

      // Parametri iniziali
      int quality = 100;
      int resize = 2000;

      // Ciclo per ridimensionare
      while ((result.length > requiredSize || resize > minSize) &&
          !timeoutExpired) {
        resize -= 100;
        if (resize < minSize) break;

        result = await ImageSqueezer.compressWithList(
          result,
          minWidth: resize,
          minHeight: resize,
          quality: quality,
        );
      }

      // Ciclo per ridurre la qualità
      while (result.length > requiredSize && !timeoutExpired) {
        quality = (quality * 0.75).toInt();
        if (quality < 10) break;

        result = await ImageSqueezer.compressWithList(
          result,
          minWidth: resize,
          minHeight: resize,
          quality: quality,
        );
      }

      // Ritorna il risultato compresso
      return timeoutExpired ? null : result;
    } catch (e) {
      debugPrint("Errore durante la compressione: $e");
      return null;
    }
  }
}
