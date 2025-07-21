import 'dart:io';

import 'package:dio/dio.dart';
import 'package:gearpizza/common/models/items_allergens.dart';
import 'package:gearpizza/common/models/read_items_allergens200_response.dart';
import 'package:gearpizza/common/services/api_service.dart';
import 'package:gearpizza/common/services/firestore_service.dart';
import 'package:gearpizza/common/services/secure_storage_service.dart';
import 'package:gearpizza/common/utils/directus_query_builder.dart';
import 'package:gearpizza/common/utils/exception_handler.dart';
import 'package:gearpizza/common/utils/serializers.dart';
import 'package:gearpizza/features/cart/api/cart_endpoints.dart';
import 'package:gearpizza/features/cart/model/customer_dto.dart';
import 'package:gearpizza/features/dashboard/api/dashboard_endpoints.dart';
import 'package:gearpizza/features/dashboard/models/alergen_dto.dart';
import 'package:gearpizza/features/dashboard/models/pizza_dto.dart';
import 'package:gearpizza/features/dashboard/models/restaurants_dto.dart';
import 'package:gearpizza/features/dashboard/services/dashboard_service_exception.dart';
import 'package:gearpizza/features/profile/api/user_endpoint.dart';
import 'package:gearpizza/features/profile/models/admin_page_dto.dart';
import 'package:gearpizza/features/profile/models/order_detail_dto.dart';
import 'package:gearpizza/features/profile/models/user_profile_data_dto.dart';
import 'package:gearpizza/features/profile/services/user_service_exception.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as p;

class UserRepository {
  final ApiService _apiService;
  final SecureStorageService _storage;
  final FirebaseStorageService _firestore =
      GetIt.instance<FirebaseStorageService>();

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

  /// Aggiorna lo stato di un ordine specifico.
  Future<void> updateOrderStatus({
    required String orderId,
    required String status,
  }) async {
    try {
      // Costruisce l'endpoint di patch dell'ordine
      final endpoint = UserEndpoint.patchOrderStatus(
        int.parse(orderId),
        queryBuilder: DirectusQueryBuilder().fields(['id', 'status']),
      );
      final resp = await _apiService.patch(
        endpoint,
        data: {'status': status},
      );
      if (resp.statusCode != 200 && resp.statusCode != 204) {
        throw UserServiceException('Errore patch status: \${resp.statusCode}');
      }
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } catch (e) {
      throw UserServiceException('Errore imprevisto: \$e');
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

  Future<AdminPageDto> fetchAdminPageDto(int restaurantId) async {
    // qui mock dell'unico ristorante ovvero il 3, andrà messo dinamico in rilasci futuri
    try {
      final qb = DirectusQueryBuilder()
        ..fields([
          'id',
          'name',
          'cover_image.filename_disk',
          'owner.first_name',
          'owner.last_name',
          'pizzas.id',
          'pizzas.name',
          'pizzas.description',
          'pizzas.restaurant.id',
          'pizzas.cover_image.id',
          'pizzas.allergens.allergens_id.id',
          'pizzas.allergens.allergens_id.name',
        ])
        ..populate([
          'cover_image',
          'owner',
          'pizzas.cover_image',
          'pizzas.allergens.allergens_id',
        ])
        ..filter({
          'id': {'_eq': restaurantId}
        });

      final endpoint = DashboardEndpoints.getRestaurants(queryBuilder: qb);
      final resp = await _apiService.get(endpoint);
      if (resp.statusCode != 200) throw FetchRestaurantsException();

      final data = resp.data['data'] as List<dynamic>?;
      if (data == null || data.isEmpty) {
        throw FetchRestaurantsException(
            'Ristorante non trovato: $restaurantId');
      }

      final map = data.first as Map<String, dynamic>;

      // Costruzione DTO
      RestaurantDto? restaurantDto = RestaurantDto.fromMap(map);
      // Se presente l'immagine su firestore la carico da li nel DTO
      final firestoreRestaurantImage = await _firestore
          .fetchRestaurantImageUrlFromFirebase(restaurantDto.id.toString());
      if (firestoreRestaurantImage != null) {
        restaurantDto.coverImageUrl = firestoreRestaurantImage;
      }

      final pizzasRaw = map['pizzas'] as List<dynamic>? ?? [];
      final pizzasDto = pizzasRaw.map((e) => PizzaDto.fromMap(e)).toList();

      return AdminPageDto(
        restaurant: restaurantDto,
        pizzas: pizzasDto,
      );
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } on UserServiceException {
      rethrow;
    } catch (_) {
      throw UnexpectedUserException();
    }
  }

  /// Elimina la pizza specificata
  Future<void> deletePizzaById(int pizzaId) async {
    try {
      final endpoint = UserEndpoint.deletePizza(pizzaId);
      final resp = await _apiService.delete(endpoint);
      if (resp.statusCode != 200 && resp.statusCode != 204) {
        throw UserServiceException(
          'Errore eliminazione pizza: ${resp.statusCode}',
        );
      }
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } catch (e) {
      throw UserServiceException('Errore imprevisto: $e');
    }
  }

  Future<void> updateRestaurantImageById({
    required int restaurantId,
    required XFile xfile,
  }) async {
    try {
      final file = File(xfile.path);

      // 1) Carico l'immagine su Firebase (stessa strategia di createOrder)
      await GetIt.instance<FirebaseStorageService>().uploadRestaurantImage(
        file,
        restaurantId.toString(),
      );
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } catch (e) {
      throw UserServiceException('Errore imprevisto: $e');
    }
  }

  Future<List<AllergenDto>> fetchAllAllergens() async {
    try {
      final endpoint = DashboardEndpoints.getAllergens();
      final resp = await _apiService.get(endpoint);
      if (resp.statusCode != 200) throw FetchAllergensException();
      final parsed = standardSerializers.deserializeWith(
          ReadItemsAllergens200Response.serializer, resp.data);
      final built = parsed?.data?.toList() ?? [];
      final list = built.map((item) {
        final raw = standardSerializers.serializeWith(
            ItemsAllergens.serializer, item) as Map<String, dynamic>;
        return AllergenDto.fromMap(raw);
      }).toList();

      return list;
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } on DashboardServiceException {
      rethrow;
    } catch (e) {
      throw DashboardServiceException('Errore imprevisto fetch allergeni: \$e');
    }
  }

  /// Aggiorna il nome del ristorante via PATCH su /users/{id}
  Future<void> updateRestaurantName({
    required String restaurantName,
    required int restaurantId,
  }) async {
    try {
      // 1) endpoint dinamico
      final endpoint =
          UserEndpoint.patchRestaurantname(restaurantId.toString());

      // 2) payload JSON
      final data = {
        'name': restaurantName,
      };

      // 3) chiamata PATCH
      final resp = await _apiService.patch(endpoint, data: data);

      // 4) considera 200 o 204 come successo
      if (resp.statusCode != 200 && resp.statusCode != 204) {
        throw PatchUserException(
            'Errore PATCH utente: codice ${resp.statusCode}');
      }
    } on DioException catch (e) {
      // rilancia una eccezione custom basata su DioError
      throw mapDioExceptionToCustomException(e);
    } on UserServiceException {
      // se già era un UserServiceException, rilanciala
      rethrow;
    } catch (e) {
      // qualsiasi altro errore imprevisto
      throw UnexpectedUserException();
    }
  }

  Future<void> saveOrUpdatePizza({
    required PizzaDto pizza,
    required XFile? file,
  }) async {
    try {
      late Response response;
      // 1) Create or update via Directus API

      final requestPayload = <String, dynamic>{
        'name': pizza.name,
        'description': pizza.description,
        // Relazione con il ristorante (campo “restaurant” in Directus)
        'restaurant': pizza.restaurantId,
        // Relazione many-to-many con gli allergeni: Directus si aspetta lista di mappe
        'allergens':
            pizza.allergens.map((a) => {'allergens_id': a.id}).toList(),
      };
      if (pizza.id == 0) {
        // create new pizza
        final endpoint = UserEndpoint.createPizza();
        response = await _apiService.post(endpoint, data: requestPayload);
      } else {
        // update existing pizza
        final endpoint = UserEndpoint.updatePizza(pizza.id);
        response = await _apiService.patch(endpoint, data: requestPayload);
      }
      if (response.statusCode != 200 && response.statusCode != 201) {
        throw UserServiceException(
            'Errore salvataggio pizza: ${response.statusCode}');
      }

      // 2) Extract pizzaId from response
      final data = response.data['data'] as Map<String, dynamic>?;
      final int pizzaId = (data?['id'] as num?)?.toInt() ?? pizza.id;

      // 3) If file present, upload to Firebase and update pizza cover_image
      if (file != null) {
        final File localFile = File(file.path);
        // upload image under folder 'pizzas/{pizzaId}'
        await _firestore.uploadPizzaImage(
          localFile,
          pizzaId.toString(),
        );
      }
    } on DioException catch (e) {
      // rilancia una eccezione custom basata su DioError
      throw mapDioExceptionToCustomException(e);
    } on UserServiceException {
      // se già era un UserServiceException, rilanciala
      rethrow;
    } catch (e) {
      // qualsiasi altro errore imprevisto
      throw UnexpectedUserException();
    }
  }
}
