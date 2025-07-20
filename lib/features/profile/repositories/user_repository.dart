import 'package:dio/dio.dart';
import 'package:gearpizza/common/services/api_service.dart';
import 'package:gearpizza/common/services/secure_storage_service.dart';
import 'package:gearpizza/common/utils/directus_query_builder.dart';
import 'package:gearpizza/common/utils/exception_handler.dart';
import 'package:gearpizza/features/profile/api/user_endpoint.dart';
import 'package:gearpizza/features/profile/models/user_profile_data_dto.dart';
import 'package:gearpizza/features/profile/services/user_service_exception.dart';

class UserRepository {
  final ApiService _apiService;
  final SecureStorageService _storage;

  UserRepository(this._apiService, this._storage);

  Future<String?> _getToken() => _storage.readSecureData('access_token');
  Future<String?> _getUserId() => _storage.readSecureData('user_id');

  Future<void> patchUser(Map<String, String> data) async {
    try {
      final token = await _getToken();
      final userId = await _getUserId();

      if (token == null || userId == null) {
        throw MissingAuthDataException();
      }

      final endpoint = UserEndpoint.patchUser(userId);

      final response = await _apiService.patch(
        endpoint,
        data: data,
      );

      if (response.statusCode != 200) {
        throw PatchUserException('Codice: ${response.statusCode}');
      }
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } on UserServiceException {
      rethrow;
    } catch (e) {
      throw UnexpectedUserException();
    }
  }

  Future<UserProfileDataDto> fetchUserProfile({List<String>? fields}) async {
    try {
      final token = await _getToken();
      final userId = await _getUserId();

      if (token == null || userId == null) {
        throw MissingAuthDataException();
      }

      final queryBuilder =
          DirectusQueryBuilder().fields(fields ?? ['id', 'email', 'full_name']);

      final endpoint =
          UserEndpoint.fetchUserProfile(userId, queryBuilder: queryBuilder);

      final response = await _apiService.get(endpoint);

      if (response.statusCode != 200) {
        throw FetchUserProfileException('Codice: ${response.statusCode}');
      }

      final data = response.data['data'] as Map<String, dynamic>;
      return UserProfileDataDto.fromMap(data);
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } on UserServiceException {
      rethrow;
    } catch (e) {
      throw UnexpectedUserException();
    }
  }

  Future<UserProfileDataDto> loadUserProfileFromStorage() async {
    final name = await _storage.readSecureData('user_full_name') ?? '';
    final email = await _storage.readSecureData('user_email') ?? '';
    return UserProfileDataDto(fullName: name, email: email);
  }

  Future<void> saveUserProfileToStorage(UserProfileDataDto profile) async {
    await _storage.writeSecureData('user_full_name', profile.fullName);
    await _storage.writeSecureData('user_email', profile.email);
  }

  Future<void> saveFieldToStorage(String field, String value) async {
    final key = field == 'full_name' ? 'user_full_name' : 'user_email';
    await _storage.writeSecureData(key, value);
  }
}
