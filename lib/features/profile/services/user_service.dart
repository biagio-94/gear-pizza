import 'package:dio/dio.dart';
import 'package:gearpizza/features/profile/models/user_profile_data_dto.dart';
import 'package:gearpizza/features/profile/repositories/user_repository.dart';
import 'package:gearpizza/features/profile/services/user_service_exception.dart';

class UserService {
  final UserRepository _userRepository;

  UserService(this._userRepository);

  /// Aggiorna i dati utente con la mappa [data].
  Future<void> updateUserProfile(Map<String, String> data) async {
    try {
      // Aggiorna via API
      await _userRepository.patchUser(data);

      // Aggiorna storage locale
      final key = data.keys.first;
      final value = data.values.first;
      await _userRepository.saveFieldToStorage(key, value);
    } on UserServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw UnexpectedUserException();
    }
  }

  /// Recupera il profilo utente.
  /// Se [fromApi] è true, carica da API e aggiorna storage, altrimenti solo da storage.
  Future<UserProfileDataDto> getUserProfile({bool fromApi = false}) async {
    try {
      if (fromApi) {
        final profile = await _userRepository.fetchUserProfile();
        await _userRepository.saveUserProfileToStorage(profile);
        return profile;
      } else {
        return await _userRepository.loadUserProfileFromStorage();
      }
    } on UserServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw UnexpectedUserException();
    }
  }
}
