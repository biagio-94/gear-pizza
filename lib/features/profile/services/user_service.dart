import 'package:dio/dio.dart';
import 'package:gearpizza/features/cart/model/order_dto.dart';
import 'package:gearpizza/features/profile/models/user_profile_data_dto.dart';
import 'package:gearpizza/features/profile/repositories/user_repository.dart';
import 'package:gearpizza/features/profile/services/user_service_exception.dart';

class UserService {
  final UserRepository _userRepository;

  UserService(this._userRepository);

  Future<void> patchUser({
    required String fullName,
    required String email,
  }) async {
    try {
      await _userRepository.patchUser(email: email, fullName: fullName);
    } on UserServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw UnexpectedUserException();
    }
  }

  /// Recupera il profilo utente Se esiste.
  Future<UserProfileDataDto?> fetchUserProfile() async {
    try {
      return await _userRepository.fetchUserProfile();
    } on UserServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw UnexpectedUserException();
    }
  }

  /// Recupera la lista di ordini associati al profilo utente, se ne esistono
  Future<List<OrderDto>> getOrdersByUserId() async {
    try {
      return await _userRepository.getOrdersByUserId();
    } on UserServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw UnexpectedUserException();
    }
  }
}
