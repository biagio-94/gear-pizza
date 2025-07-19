import 'dart:convert';
import 'dart:io';
import 'package:http_parser/http_parser.dart';
import 'package:path/path.dart' as p;
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:gearpizza/common/api/endpoints.dart';
import 'package:gearpizza/common/models/login200_response.dart';
import 'package:gearpizza/common/models/refresh_request.dart';
import 'package:gearpizza/common/services/secure_storage_service.dart';
import 'package:gearpizza/common/utils/serializers.dart';
import 'package:gearpizza/features/auth/api/auth_endpoints.dart';
import 'package:get_it/get_it.dart';
import 'package:mime/mime.dart';

class ApiService {
  ApiService() {
    _initializeDio();
  }

  late Dio _dio;
  String? _accessToken;
  String? _refreshToken;

  String? get accessToken => _accessToken;
  String? get refreshToken => _refreshToken;

  void setAccessToken(String token) => _accessToken = token;
  void setRefreshToken(String token) => _refreshToken = token;

  void _initializeDio() {
    final baseUrl = BaseUrl.getBaseUrl(kReleaseMode);

    _dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
    ));

    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        // Se ho un accessToken lo invio come Bearer
        if (_accessToken != null) {
          options.headers['Authorization'] = 'Bearer $_accessToken';
        }
        handler.next(options);
      },
      onError: (DioException e, handler) async {
        if (!kReleaseMode) {
          debugPrint('*** Dio Error ***');
          debugPrint('URI: ${e.requestOptions.uri}');
          debugPrint('Status: ${e.response?.statusCode}');
          debugPrint('Message: ${e.message}');
          if (e.response?.data != null) {
            debugPrint('Payload: ${jsonEncode(e.response!.data)}');
          }
        }

        final status = e.response?.statusCode;
        final path = e.requestOptions.uri.path;
        final isRefreshEndpoint = path.endsWith("/refresh");

        // 1) Se 401, non siamo già sulla rotta di refresh e non abbiamo già fatto retry → provo a rinnovare
        if (status == 401 && !isRefreshEndpoint) {
          final retryResponse = await _handleTokenRefresh(e);
          if (retryResponse != null) {
            return handler.resolve(retryResponse);
          } else {
            return handler.reject(e);
          }
        }

        // 2) Per 400 e 404 voglio semplicemente lasciare passare la response
        if (e.response != null && (status == 400 || status == 404)) {
          return handler.resolve(e.response!);
        }

        // 3) Altrimenti rilancio l’errore
        return handler.reject(e);
      },
    ));

    if (!kReleaseMode) {
      _dio.interceptors.add(LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
      ));
    }
  }

  Future<Response?> _handleTokenRefresh(DioException e) async {
    try {
      if (_refreshToken == null) return null;

      // Preparo il body per il refresh
      final req = RefreshRequest((b) => b..refreshToken = _refreshToken);
      final data =
          standardSerializers.serializeWith(RefreshRequest.serializer, req);

      final response = await _dio.post(
        AuthEndpoints.refreshToken,
        data: data,
      );

      if (response.statusCode == 200) {
        final refreshResp = standardSerializers.deserializeWith(
          Login200Response.serializer,
          response.data,
        );

        final tokens = refreshResp?.data;
        final accessToken = tokens?.accessToken;
        final refreshToken = tokens?.refreshToken;

        // Se l'access token è assente, non posso proseguire
        if (accessToken == null || accessToken.isEmpty) {
          throw Exception(
              'Access token non presente o vuoto nella risposta di refresh.');
        }

        // Salvo i token in modo sicuro
        setAccessToken(accessToken);

        if (refreshToken?.isNotEmpty == true && tokens?.expires != null) {
          setRefreshToken(refreshToken!);
          await saveNewRefreshInfo(
              refreshToken: refreshToken, expiresMs: tokens!.expires!);
        }

        // Ricrea la richiesta originale con il nuovo token
        final updatedRequest = e.requestOptions
          ..headers['Authorization'] = 'Bearer $accessToken';

        return await _dio.fetch(updatedRequest);
      }
      return null;
    } catch (_) {
      return null;
    }
  }

  // Metodi GET, POST, PUT, DELETE, PATCH
  Future<Response> get(String path, {Map<String, dynamic>? queryParameters}) =>
      _dio.get(path, queryParameters: queryParameters);
  Future<Response> post(String path, {dynamic data}) =>
      _dio.post(path, data: data);
  Future<Response> put(String path, {dynamic data}) =>
      _dio.put(path, data: jsonEncode(data));
  Future<Response> delete(String path,
          {Map<String, dynamic>? queryParameters}) =>
      _dio.delete(path, queryParameters: queryParameters);
  Future<Response> patch(String path, {dynamic data}) =>
      _dio.patch(path, data: data);
  Future<Response> postMultipart(String path, FormData data) =>
      _dio.post(path, data: data);
  // Upload image helpers
  Future<MultipartFile> uploadImage(File file) async {
    final fileName = p.basename(file.path);
    return MultipartFile.fromFile(file.path, filename: fileName);
  }

  Future<String> uploadFileToDirectus(
      File file, String title, String customeId) async {
    final fileName = file.path.split('/').last;
    final mimeType = lookupMimeType(file.path) ?? 'png/jpeg';
    final parts = mimeType.split('/');

    final fileStat = await file.stat();

    final form = FormData.fromMap({
      'file': await MultipartFile.fromFile(
        file.path,
        filename: fileName,
        contentType: MediaType(parts[0], parts[1]),
      ),
      'title': title,
      'filename_download': fileName,
      'type': mimeType,
      'charset': 'binary',
      "width": 800,
      "height": 838,
      'filesize': fileStat.size,
      'storage': 'local',
      'uploaded_on': DateTime.now().toUtc().toIso8601String(),
      'created_on': DateTime.now().toUtc().toIso8601String(),
      'uploaded_by': customeId,
    });
    debugPrint("fileStat: ${fileStat.toString()}");

    final resp = await postMultipart('/files', form);

    if (resp.statusCode == 200 || resp.statusCode == 201) {
      return resp.data['data']['id'] as String;
    } else {
      throw Exception('Upload image failed: ${resp.statusCode} ${resp.data}');
    }
  }

  Future<void> saveNewRefreshInfo(
      {required String refreshToken, required int expiresMs}) async {
    final expiryDate = DateTime.now().add(Duration(milliseconds: expiresMs));
    await GetIt.instance<SecureStorageService>()
        .writeSecureData('refreshTokenExpiry', expiryDate.toIso8601String());
    await GetIt.instance<SecureStorageService>()
        .writeSecureData('refreshToken', refreshToken);
  }

  void setTimeouts({Duration? connectTimeout, Duration? receiveTimeout}) {
    _dio.options.connectTimeout = connectTimeout ?? _dio.options.connectTimeout;
    _dio.options.receiveTimeout = receiveTimeout ?? _dio.options.receiveTimeout;
  }
}
