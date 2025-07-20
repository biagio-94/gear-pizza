import 'package:dio/dio.dart';
import 'package:gearpizza/common/services/api_service.dart';
import 'package:gearpizza/common/services/secure_storage_service.dart';
import 'package:gearpizza/common/utils/directus_query_builder.dart';
import 'package:gearpizza/common/utils/exception_handler.dart';
import 'package:gearpizza/features/cart/api/cart_endpoints.dart';
import 'package:gearpizza/features/cart/model/customer_dto.dart';
import 'package:gearpizza/features/cart/model/order_dto.dart';
import 'package:gearpizza/features/profile/api/user_endpoint.dart';
import 'package:gearpizza/features/profile/models/order_detail_dto.dart';
import 'package:gearpizza/features/profile/models/user_profile_data_dto.dart';
import 'package:gearpizza/features/profile/services/user_service_exception.dart';

class UserRepository {
  final ApiService _apiService;
  final SecureStorageService _storage;

  UserRepository(this._apiService, this._storage);

  Future<String?> _getUserId() => _storage.readSecureData('user_id');
  Future<void> _saveUserId(String id) async =>
      _storage.writeSecureData('user_id', id);

  Future<void> _saveProfileFields({String? fullName, String? email}) async {
    if (fullName != null) {
      await _storage.writeSecureData('user_full_name', fullName);
    }
    if (email != null) {
      await _storage.writeSecureData('user_email', email);
    }
  }

  Future<CustomerDto?> _checkCustomerExists(String email) async {
    if (email.trim().isEmpty) return null;
    final endpoint = CartEndpoints.checkCustomer(email: email);
    final resp = await _apiService.get(endpoint);
    if (resp.statusCode != 200) {
      throw UserServiceException('Errore fetch customer: \${resp.statusCode}');
    }
    final list = resp.data['data'] as List<dynamic>? ?? [];
    return list.isEmpty
        ? null
        : CustomerDto.fromMap(list.first as Map<String, dynamic>);
  }

  /// Patch o crea customer in base a email e nome
  Future<void> patchUser({String? fullName, String? email}) async {
    try {
      String? id = await _getUserId();

      // Se manca l'id ma ho un'email valida, cerco o creo customer
      if (id == null && email != null && email.trim().isNotEmpty) {
        final existing = await _checkCustomerExists(email);
        CustomerDto customer;
        if (existing != null) {
          customer = existing;
        } else {
          return;
        }
        id = customer.id.toString();
        await _saveUserId(id);
      }

      if (id == null) {
        return;
      }

      // Preparo payload dinamico
      final data = <String, String>{};
      if (fullName != null && fullName.trim().isNotEmpty) {
        data['name'] = fullName;
      }
      if (email != null && email.trim().isNotEmpty) {
        data['email_address'] = email;
      }
      if (data.isEmpty) return;

      final endpoint = UserEndpoint.patchUser(id);
      final resp = await _apiService.patch(endpoint, data: data);
      if (resp.statusCode != 200 && resp.statusCode != 204) {
        throw PatchUserException('Codice: \${resp.statusCode}');
      }

      await _saveProfileFields(fullName: fullName, email: email);
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } on UserServiceException {
      rethrow;
    } catch (e) {
      throw UnexpectedUserException();
    }
  }

  Future<List<OrderDetailDto>> getOrdersByUserId() async {
    try {
      final userId = await _getUserId();
      if (userId == null) {
        return [];
      }

      final qb = DirectusQueryBuilder()
        ..filter({
          'customer': {'_eq': userId}
        })
        ..fields([
          '*', // tutti i campi dell'ordine
          'pizzas.*', // pivot table
          'pizzas.pizzas_id.*', // dati completi della pizza
          'pizzas.pizzas_id.allergens.*', // 👈 dati completi degli allergeni
          'restaurant.*',
          'customer.*',
        ])
        ..sort('-id')
        ..populate([
          'restaurant',
          'customer',
          'pizzas.pizzas_id',
          'pizzas.pizzas_id.allergens', // 👈 relazione allergeni popolata
        ]);

      final endpoint = UserEndpoint.getOrdersByUserId(userId, qb);

      final resp = await _apiService.get(endpoint);
      if (resp.statusCode != 200) {
        throw UserServiceException(
            "Errore caricamento ordini: ${resp.statusCode}");
      }

      final data = resp.data['data'] as List<dynamic>? ?? [];
      return data
          .map((e) => OrderDetailDto.fromMap(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } catch (e) {
      throw UserServiceException("Errore imprevisto: $e");
    }
  }

  Future<UserProfileDataDto?> fetchUserProfile() async {
    try {
      final id = await _getUserId();
      if (id == null) return null;

      final qb = DirectusQueryBuilder().fields(['id', 'email_address', 'name']);
      final endpoint = UserEndpoint.fetchUserProfile(id, queryBuilder: qb);
      final resp = await _apiService.get(endpoint);
      if (resp.statusCode != 200 && resp.statusCode != 204) {
        throw FetchUserProfileException('Codice: \${resp.statusCode}');
      }
      final data = resp.data['data'] as Map<String, dynamic>;
      return UserProfileDataDto.fromMap(data);
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    }
  }

  Future<UserProfileDataDto> loadUserProfileFromStorage() async {
    final name = await _storage.readSecureData('user_full_name') ?? '';
    final email = await _storage.readSecureData('user_email') ?? '';
    return UserProfileDataDto(fullName: name, email: email);
  }
}
