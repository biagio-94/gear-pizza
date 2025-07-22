import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gearpizza/common/api/endpoints.dart';
import 'package:gearpizza/common/services/api_service.dart';
import 'package:get_it/get_it.dart';

class ImageDownloadHelper {
  static final String _accessToken =
      GetIt.instance<ApiService>().cacheAccessToken ?? "";
  static final baseUrl = BaseUrl.getBaseUrl(kReleaseMode);

  /// Carica e cachea l'immagine da rete con autorizzazione.
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
    return Image.network(
      fullUrl,
      // Headers per l'autenticazione se non è un URI Firestore
      headers: !isFirestoreUri
          ? {
              "Authorization": "Bearer $_accessToken",
            }
          : null,

      // Dimensioni opzionali
      width: width,
      height: height,
      loadingBuilder:
          (BuildContext context, Widget child, ImageChunkEvent? progress) {
        if (progress == null) {
          // immagine già pronta
          return child;
        }
        // ancora in caricamento: mostra il CircularProgressIndicator
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

      // opzionale: widget da mostrare in caso di errore
      errorBuilder: (_, __, ___) => errorWidget ?? const Icon(Icons.error),

      // Comportamento di ridimensionamento e allineamento
      fit: fit,
      alignment: alignment,
    );
  }
}
