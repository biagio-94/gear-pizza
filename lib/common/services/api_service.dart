import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:gearpizza/common/api/endpoints.dart';
import 'package:gearpizza/common/utils/serializers.dart';
import 'package:gearpizza/features/auth/api/auth_endpoints.dart';
import 'package:gearpizza/features/auth/models/login_refresh_request.dart';
import 'package:gearpizza/features/auth/models/login_response.dart';

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
    String baseUrl = BaseUrl.getBaseUrl(kReleaseMode);

    _dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
    ));

    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        if (_accessToken != null) {
          options.headers['auth-token'] = _accessToken;
        }
        handler.next(options);
      },
      onError: (DioException e, handler) async {
        if (!kReleaseMode) {
          debugPrint('*** Error ***');
          debugPrint('uri: ${e.requestOptions.uri}');
          debugPrint('statusCode: ${e.response?.statusCode}');
          debugPrint('Error message: ${e.message}');

          // Log completo del corpo della risposta di errore
          if (e.response?.data != null) {
            debugPrint('Error data: ${jsonEncode(e.response?.data)}');
          } else {
            debugPrint('Error data: Nessun dato nella risposta di errore.');
          }
        }

        if (e.response?.statusCode == 401 &&
            e.response?.requestOptions.uri.path.endsWith("/refresh") == false) {
          final response = await _handleTokenRefresh(e);
          return response != null
              ? handler.resolve(response)
              : handler.reject(e);
        }

        if (e.response != null && e.response?.statusCode == 400 ||
            e.response?.statusCode == 404) {
          handler.resolve(e.response!);
        } else {
          handler.reject(e);
        }
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

      final request = LoginRefreshRequest((b) => b..refresh = _refreshToken);
      final serializedRefreshRequest = standardSerializers.serializeWith(
          LoginRefreshRequest.serializer, request);

      // Invia la richiesta con il corpo serializzato
      final response = await _dio.post(
        AuthEndpoints.refreshToken,
        data: serializedRefreshRequest,
      );

      if (response.statusCode == 200) {
        final refreshResponse = standardSerializers.deserializeWith(
            LoginResponse.serializer, response.data);

        if (refreshResponse == null || refreshResponse.token == null) {
          return null;
        }

        setAccessToken(refreshResponse.token!);

        if (refreshResponse.refreshToken != null) {
          setRefreshToken(refreshResponse.refreshToken!);
        }

        final retryResponse = await _dio
            .fetch(e.requestOptions..headers['auth-token'] = _accessToken);

        return retryResponse;
      } else {
        return null;
      }
    } catch (_) {
      return null;
    }
  }

  Future<Response> get(String path, {Map<String, dynamic>? queryParams}) async {
    return _dio.get(path, queryParameters: queryParams);
  }

  Future<Response> post(String path, {dynamic data}) async {
    return _dio.post(path, data: data);
  }

  Future<Response> put(String path, {dynamic data}) async {
    return _dio.put(path, data: jsonEncode(data));
  }

  Future<Response> delete(String path,
      {Map<String, dynamic>? queryParams}) async {
    return _dio.delete(path, queryParameters: queryParams);
  }

  Future<Response> patch(String path, {dynamic data}) async {
    return _dio.patch(path, data: data);
  }

  Future<Response> postMultipart(String path, FormData data) async {
    return _dio.post(path, data: data);
  }

  void setTimeouts({Duration? connectTimeout, Duration? receiveTimeout}) {
    _dio.options.connectTimeout = connectTimeout ?? _dio.options.connectTimeout;
    _dio.options.receiveTimeout = receiveTimeout ?? _dio.options.receiveTimeout;
  }
}
