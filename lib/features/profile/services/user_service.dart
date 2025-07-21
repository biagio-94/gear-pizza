import 'package:dio/dio.dart';
import 'package:gearpizza/features/dashboard/models/alergen_dto.dart';
import 'package:gearpizza/features/dashboard/models/pizza_dto.dart';
import 'package:gearpizza/features/profile/models/admin_page_dto.dart';
import 'package:gearpizza/features/profile/models/order_detail_dto.dart';
import 'package:gearpizza/features/profile/models/user_profile_data_dto.dart';
import 'package:gearpizza/features/profile/repositories/user_repository.dart';
import 'package:gearpizza/features/profile/services/user_service_exception.dart';
import 'package:image_picker/image_picker.dart';

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
  Future<List<OrderDetailDto>> getOrdersByUserId() async {
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

  /// Aggiorna lo stato di un ordine specifico.
  Future<void> updateOrderStatus({
    required String orderId,
    required String newStatus,
  }) async {
    try {
      await _userRepository.updateOrderStatus(
        orderId: orderId,
        status: newStatus,
      );
    } on UserServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw UnexpectedUserException();
    }
  }

  Future<AdminPageDto> fetchAdminPageDto(int restaurantId) async {
    try {
      return await _userRepository.fetchAdminPageDto(
        restaurantId,
      );
    } on UserServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw UnexpectedUserException();
    }
  }

  Future<void> updateRestaurantImageById({
    required int restaurantId,
    required XFile xfile,
  }) async {
    try {
      await _userRepository.updateRestaurantImageById(
          restaurantId: restaurantId, xfile: xfile);
    } on UserServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw UnexpectedUserException();
    }
  }

  Future<void> deletePizzaById(int pizzaId) async {
    try {
      await _userRepository.deletePizzaById(pizzaId);
    } on UserServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw UnexpectedUserException();
    }
  }

  Future<void> updateRestaurantName(
      {required String restaurantName, required int restaurantId}) async {
    try {
      await _userRepository.updateRestaurantName(
        restaurantName: restaurantName,
        restaurantId: restaurantId,
      );
    } on UserServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw UnexpectedUserException();
    }
  }

  Future<void> saveOrUpdatePizza({
    required PizzaDto pizza,
    required XFile? file,
  }) async {
    try {
      await _userRepository.saveOrUpdatePizza(pizza: pizza, file: file);
    } on UserServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw UnexpectedUserException();
    }
  }

  Future<List<AllergenDto>> fetchAllAllergens() async {
    try {
      return await _userRepository.fetchAllAllergens();
    } on UserServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw UnexpectedUserException();
    }
  }
}
