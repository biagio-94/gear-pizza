import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gearpizza/common/api/endpoints.dart';
import 'package:gearpizza/common/services/api_service.dart';
import 'package:get_it/get_it.dart';

class ImageDownloadHelper {
  static final String _accessToken =
      GetIt.instance<ApiService>().accessToken ?? "";
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
    final fullUrl = "${baseUrl}assets/$url";
    return CachedNetworkImage(
      imageUrl: fullUrl,
      httpHeaders: {
        "Authorization": "Bearer $_accessToken",
      },
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      placeholder: (_, __) =>
          placeholder ??
          const SizedBox(
            width: 24,
            height: 24,
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
      errorWidget: (_, __, ___) =>
          errorWidget ??
          const Icon(Icons.broken_image, size: 24, color: Colors.redAccent),
    );
  }
}
