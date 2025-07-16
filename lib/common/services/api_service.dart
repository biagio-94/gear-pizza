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

        // Se 401 e non sto già facendo il refresh, provo a rinnovare il token
        final isRefreshCall = e.requestOptions.path.contains('/refresh');
        if (e.response?.statusCode == 401 && !isRefreshCall) {
          final retry = await _handleTokenRefresh(e);
          return retry != null ? handler.resolve(retry) : handler.reject(e);
        }

        // Per 400 e 404 voglio semplicemente lasciare passare la response
        if (e.response != null &&
            (e.response!.statusCode == 400 || e.response!.statusCode == 404)) {
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

      // Preparo il body per il refresh
      final req = LoginRefreshRequest((b) => b..refresh = _refreshToken);
      final data = standardSerializers.serializeWith(
          LoginRefreshRequest.serializer, req);

      final response = await _dio.post(
        AuthEndpoints.refreshToken,
        data: data,
      );

      if (response.statusCode == 200) {
        final refreshResp = standardSerializers.deserializeWith(
          LoginResponse.serializer,
          response.data,
        );

        // Se valido, salvo i token
        if (refreshResp?.token != null) {
          setAccessToken(refreshResp!.token!);
          if (refreshResp.refreshToken != null) {
            setRefreshToken(refreshResp.refreshToken!);
          }

          // Rifaccio la chiamata originale con il nuovo bearer
          final opts = e.requestOptions
            ..headers['Authorization'] = 'Bearer $_accessToken';
          return await _dio.fetch(opts);
        }
      }
      return null;
    } catch (_) {
      return null;
    }
  }

  Future<Response> get(String path, {Map<String, dynamic>? queryParams}) =>
      _dio.get(path, queryParameters: queryParams);

  Future<Response> post(String path, {dynamic data}) =>
      _dio.post(path, data: data);

  Future<Response> put(String path, {dynamic data}) =>
      _dio.put(path, data: jsonEncode(data));

  Future<Response> delete(String path, {Map<String, dynamic>? queryParams}) =>
      _dio.delete(path, queryParameters: queryParams);

  Future<Response> patch(String path, {dynamic data}) =>
      _dio.patch(path, data: data);

  Future<Response> postMultipart(String path, FormData data) =>
      _dio.post(path, data: data);

  void setTimeouts({Duration? connectTimeout, Duration? receiveTimeout}) {
    _dio.options.connectTimeout = connectTimeout ?? _dio.options.connectTimeout;
    _dio.options.receiveTimeout = receiveTimeout ?? _dio.options.receiveTimeout;
  }
}
