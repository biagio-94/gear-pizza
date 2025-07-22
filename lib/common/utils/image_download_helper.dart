import 'package:flutter/material.dart';
import 'package:gearpizza/common/services/secure_storage_service.dart';
import 'package:get_it/get_it.dart';

class ImageDownloadHelper {
  static String baseUrl = "https://gearpizza.revod.services/"; // URL valido

  // Funzione che carica l'immagine con il token di accesso
  static Widget loadCachedNetworkImage(
    String url, {
    double? width,
    double? height,
    BoxFit? fit,
    Alignment alignment = Alignment.center,
    Widget? placeholder,
    Widget? errorWidget,
  }) {
    final bool isFirestoreUri = url.startsWith("https://firebasestorage");
    final fullUrl = !isFirestoreUri ? "${baseUrl}assets/$url" : url;

    // Usa FutureBuilder per recuperare il token in modo asincrono
    return FutureBuilder<String?>(
      future:
          GetIt.instance<SecureStorageService>().readSecureData("accessToken"),
      builder: (BuildContext context, AsyncSnapshot<String?> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Mostra un indicatore di caricamento mentre aspettiamo il token
          return Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          // Se c'è un errore nel recupero del token, mostra l'errore
          return errorWidget ?? const Icon(Icons.error);
        }

        final String? accessToken = snapshot.data;

        // Se non abbiamo il token, carica l'immagine senza autorizzazione
        if (accessToken == null || accessToken.isEmpty) {
          return Image.network(
            fullUrl,
            width: width,
            height: height,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? progress) {
              if (progress == null) {
                return child;
              }
              final double? value = progress.expectedTotalBytes != null
                  ? progress.cumulativeBytesLoaded /
                      progress.expectedTotalBytes!
                  : null;
              return Center(
                child: SizedBox(
                  width: 40,
                  height: 40,
                  child: CircularProgressIndicator(value: value),
                ),
              );
            },
            errorBuilder: (_, __, ___) =>
                errorWidget ?? const Icon(Icons.error),
            fit: fit,
            alignment: alignment,
          );
        }

        // Altrimenti, aggiungi l'header Authorization con il token
        return Image.network(
          fullUrl,
          headers: {
            "Authorization": "Bearer $accessToken",
          },
          width: width,
          height: height,
          loadingBuilder:
              (BuildContext context, Widget child, ImageChunkEvent? progress) {
            if (progress == null) {
              return child;
            }
            final double? value = progress.expectedTotalBytes != null
                ? progress.cumulativeBytesLoaded / progress.expectedTotalBytes!
                : null;
            return Center(
              child: SizedBox(
                width: 40,
                height: 40,
                child: CircularProgressIndicator(value: value),
              ),
            );
          },
          errorBuilder: (_, __, ___) => errorWidget ?? const Icon(Icons.error),
          fit: fit,
          alignment: alignment,
        );
      },
    );
  }
}
