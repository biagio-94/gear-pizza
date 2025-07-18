import 'package:flutter/material.dart';
import 'package:gearpizza/common/services/api_service.dart';
import 'package:get_it/get_it.dart';

class ImageDownloadHelper {
  static final String _accessToken =
      GetIt.instance<ApiService>().accessToken ?? "";

  static Image loadNetworkImage(
    String url, {
    double? width,
    double? height,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
  }) {
    return Image.network(
      url,
      headers: {
        "Authorization": "Bearer $_accessToken",
      },
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
    );
  }
}
