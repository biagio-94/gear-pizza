import 'dart:convert';
import 'dart:async';
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

  late final Dio _dio;
  final SecureStorageService _storage = GetIt.instance<SecureStorageService>();
  static const _accessKey = 'accessToken';
  static const _refreshKey = 'refreshToken';

  String? _cacheAccessToken;
  String? get cacheAccessToken => _cacheAccessToken;

  // Async getters
  Future<String?> get accessToken async =>
      await _storage.readSecureData(_accessKey);
  Future<String?> get _refreshToken async =>
      await _storage.readSecureData(_refreshKey);

  // Internal setters
  Future<void> setAccessToken(String token) async =>
      await _storage.writeSecureData(_accessKey, token);
  Future<void> setRefreshToken(String token) async =>
      await _storage.writeSecureData(_refreshKey, token);

  /// Clear both access and refresh tokens (e.g. on logout)
  Future<void> clearAllTokens() async {
    await _storage.deleteSecureData(_accessKey);
    await _storage.deleteSecureData(_refreshKey);
  }

  void _initializeDio() {
    final baseUrl = BaseUrl.getBaseUrl(kReleaseMode);
    _dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
    ));

    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        final path = options.uri.path;
        final isRefresh = path.endsWith('/refresh');
        final isLogin = path.endsWith('/login');

        final token = await accessToken;
        if (token?.isNotEmpty == true && !isRefresh && !isLogin) {
          _cacheAccessToken = token;
          options.headers['Authorization'] = 'Bearer $token';
        }
        handler.next(options);
      },
      onError: (DioException e, handler) async {
        final path = e.requestOptions.uri.path;
        final status = e.response?.statusCode;
        final isRefresh = path.endsWith('/refresh');
        if (isRefresh) {
          return handler.reject(e);
        }

        if ((status == 401 || status == 403) && !isRefresh) {
          final retry = await _handleRefresh(e);
          if (retry != null) {
            return handler.resolve(retry);
          }
        }

        if (status == 400 || status == 404) {
          return handler.resolve(e.response!);
        }

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

  Future<Response?> _handleRefresh(DioException err) async {
    const int maxRetries = 3;
    int retryCount = 0;
    int delaySeconds = 1;

    while (retryCount < maxRetries) {
      try {
        final refresh = await _refreshToken;
        if (refresh == null) return null;

        final req = RefreshRequest((b) => b..refreshToken = refresh);
        final data =
            standardSerializers.serializeWith(RefreshRequest.serializer, req);
        final resp = await _dio.post(AuthEndpoints.refreshToken, data: data);

        if (resp.statusCode == 200) {
          final body = standardSerializers.deserializeWith(
              Login200Response.serializer, resp.data);
          final tokens = body?.data;
          final newAccess = tokens?.accessToken;
          final newRefresh = tokens?.refreshToken;
          final expires = tokens?.expires;
          if (newAccess == null || newAccess.isEmpty) return null;

          await setAccessToken(newAccess);
          if (newRefresh != null && expires != null) {
            await setRefreshToken(newRefresh);
            final expiryDate =
                DateTime.now().add(Duration(milliseconds: expires));
            await _storage.writeSecureData(
                'refreshTokenExpiry', expiryDate.toIso8601String());
          }

          final request = err.requestOptions;
          final token = newAccess;
          final opts = Options(
            method: request.method,
            headers: {...request.headers, 'Authorization': 'Bearer $token'},
            responseType: request.responseType,
            followRedirects: request.followRedirects,
            validateStatus: request.validateStatus,
            receiveDataWhenStatusError: request.receiveDataWhenStatusError,
          );
          return _dio.requestUri(request.uri,
              options: opts, data: request.data);
        }
      } catch (_) {
        // Ignora eccezioni qui e prova di nuovo
      }

      retryCount++;
      if (retryCount < maxRetries) {
        await Future.delayed(Duration(seconds: delaySeconds));
        delaySeconds *= 2; // Exponential backoff
      }
    }

    // Dopo maxRetries falliti, pulisci i token e manda evento signOut
    await setAccessToken('');
    await setRefreshToken('');
    await _storage.deleteSecureData(_refreshKey);
    await _storage.deleteSecureData(_accessKey);
    await _storage.deleteSecureData('refreshTokenExpiry');

    return null;
  }

  // REST methods
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

  Future<MultipartFile> uploadImage(File file) async {
    final name = p.basename(file.path);
    return MultipartFile.fromFile(file.path, filename: name);
  }

  Future<String> uploadFileToDirectus(
      File file, String title, String customId) async {
    final name = p.basename(file.path);
    final mime = lookupMimeType(file.path) ?? 'image/jpeg';
    final parts = mime.split('/');
    if (parts.length != 2) throw Exception('Invalid MIME: $mime');
    final form = FormData.fromMap({
      'file': await MultipartFile.fromFile(
        file.path,
        filename: name,
        contentType: MediaType(parts[0], parts[1]),
      ),
    });
    final resp = await postMultipart('/files', form);
    if (resp.statusCode == 200 || resp.statusCode == 201) {
      final id = resp.data['data']?['id'];
      if (id != null) return id as String;
      throw Exception('Missing file id');
    }
    throw Exception('Upload failed ${resp.statusCode}');
  }

  Future<void> setTimeouts(
      {Duration? connectTimeout, Duration? receiveTimeout}) async {
    _dio.options.connectTimeout = connectTimeout ?? _dio.options.connectTimeout;
    _dio.options.receiveTimeout = receiveTimeout ?? _dio.options.receiveTimeout;
  }
}
