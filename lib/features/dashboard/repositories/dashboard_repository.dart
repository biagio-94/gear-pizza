import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gearpizza/common/models/items_allergens.dart';
import 'package:gearpizza/common/models/read_items_allergens200_response.dart';
import 'package:gearpizza/common/services/firestore_service.dart';
import 'package:gearpizza/common/services/secure_storage_service.dart';
import 'package:gearpizza/common/utils/directus_query_builder.dart';
import 'package:gearpizza/common/utils/exception_handler.dart';
import 'package:gearpizza/common/utils/serializers.dart';
import 'package:gearpizza/features/cart/model/customer_dto.dart';
import 'package:gearpizza/features/dashboard/api/dashboard_endpoints.dart';
import 'package:gearpizza/features/dashboard/models/alergen_dto.dart';
import 'package:gearpizza/features/dashboard/models/filters_dto.dart';
import 'package:gearpizza/features/dashboard/models/pizza_dto.dart';
import 'package:gearpizza/features/dashboard/models/restaurants_dto.dart';
import 'package:gearpizza/common/services/api_service.dart';
import 'package:gearpizza/features/dashboard/services/dashboard_service_exception.dart';
import 'package:get_it/get_it.dart';

/// Repository con caching in-memory per dati poco dinamici e fetch singolo con cache:
/// - Ristoranti, Filtri, Allergeni (TTL 1h)
/// - Ristorante by id (TTL 5min)
/// - Pizza by id (TTL 5min)
class DashboardRepository {
  final ApiService _apiService;

  DashboardRepository(this._apiService);

  // Cache globali
  List<RestaurantDto>? _restaurantsCache;
  DateTime? _restaurantsCachedAt;

  List<FiltersDto>? _filtersCache;
  DateTime? _filtersCachedAt;

  List<AllergenDto>? _allergensCache;
  DateTime? _allergensCachedAt;

  // Cache by id
  final Map<int, RestaurantDto> _restaurantByIdCache = {};
  final Map<int, DateTime> _restaurantByIdCachedAt = {};

  final Map<int, PizzaDto> _pizzaByIdCache = {};
  final Map<int, DateTime> _pizzaByIdCachedAt = {};

  // TTL durations
  final Duration _cacheTTL = const Duration(seconds: 0);
  final Duration _byIdTTL = const Duration(seconds: 0);

  bool _cacheValid(DateTime? timestamp, Duration ttl) {
    return timestamp != null && DateTime.now().difference(timestamp) < ttl;
  }

  /// Invalidate all caches
  void clearCache() {
    _restaurantsCache = null;
    _restaurantsCachedAt = null;
    _filtersCache = null;
    _filtersCachedAt = null;
    _allergensCache = null;
    _allergensCachedAt = null;
    _restaurantByIdCache.clear();
    _restaurantByIdCachedAt.clear();
    _pizzaByIdCache.clear();
    _pizzaByIdCachedAt.clear();
  }

  Future<List<RestaurantDto>> fetchAllRestaurants() async {
    if (_cacheValid(_restaurantsCachedAt, _cacheTTL) &&
        _restaurantsCache != null) {
      return _restaurantsCache!;
    }
    try {
      final qb = DirectusQueryBuilder()
        ..fields([
          'id',
          'name',
          'cover_image.*',
          'owner.first_name',
          'owner.last_name',
          'pizzas'
        ])
        ..populate(['cover_image', 'owner']);
      final endpoint = DashboardEndpoints.getRestaurants(queryBuilder: qb);
      final resp = await _apiService.get(endpoint);
      if (resp.statusCode != 200) throw FetchRestaurantsException();

      final rawData = resp.data['data'] as List<dynamic>? ?? [];

      // Costruzione DTO con override da Firebase
      final List<RestaurantDto> list = [];
      for (final item in rawData) {
        final dto = RestaurantDto.fromMap(item as Map<String, dynamic>);

        // Override immagine se presente su Firebase
        final firestoreRestaurantImage =
            await GetIt.instance<FirebaseStorageService>()
                .fetchRestaurantImageUrlFromFirebase(dto.id.toString());
        if (firestoreRestaurantImage != null) {
          dto.coverImageUrl = firestoreRestaurantImage;
        }

        list.add(dto);
      }

      _restaurantsCache = list;
      _restaurantsCachedAt = DateTime.now();
      return list;
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } on DashboardServiceException {
      rethrow;
    } catch (e) {
      throw DashboardServiceException('Errore imprevisto fetch ristoranti: $e');
    }
  }

  Future<CustomerDto?> fetchCustomerInfoIfExists() async {
    try {
      // 1) Leggo l'id dal local storage
      final userId = await GetIt.instance<SecureStorageService>()
          .readSecureData('user_id');
      if (userId == null) {
        // Non ho un user_id
        return null;
      }

      // 2) Costruisco l'endpoint per il singolo customer
      final endpoint = DashboardEndpoints.getCustomerById(
        userId,
        queryBuilder: DirectusQueryBuilder()
          ..fields(['id', 'email_address', 'name']),
      );

      // 3) Eseguo la GET
      final resp = await _apiService.get(endpoint);
      if (resp.statusCode != 200) {
        // Se il codice non è OK→ restituisco null
        return null;
      }

      // 4) Estraggo il payload
      final data = resp.data['data'] as Map<String, dynamic>?;
      debugPrint("data If exists $data");
      if (data == null || data.isEmpty) {
        return null;
      }

      // 5) Mappa in DTO e restituisci
      return CustomerDto.fromMap(data);
    } on DioException catch (e) {
      // Mappo l'errore Dio in un'eccezione custom
      throw mapDioExceptionToCustomException(e);
    } catch (e) {
      // Qualsiasi altro errore
      throw DashboardServiceException('Errore imprevisto: $e');
    }
  }

  Future<RestaurantDto> fetchRestaurantById({required int restaurantId}) async {
    final cachedAt = _restaurantByIdCachedAt[restaurantId];
    if (_cacheValid(cachedAt, _byIdTTL) &&
        _restaurantByIdCache.containsKey(restaurantId)) {
      return _restaurantByIdCache[restaurantId]!;
    }
    try {
      final qb = DirectusQueryBuilder()
        ..fields([
          'id',
          'name',
          'cover_image.*',
          'owner.first_name',
          'owner.last_name',
          'pizzas'
        ])
        ..populate(['cover_image', 'owner'])
        ..filter({
          'id': {'_eq': restaurantId}
        });
      final endpoint = DashboardEndpoints.getRestaurants(queryBuilder: qb);
      final resp = await _apiService.get(endpoint);
      if (resp.statusCode != 200) throw FetchRestaurantsException();
      final data = resp.data['data'] as List<dynamic>?;
      if (data == null || data.isEmpty) {
        throw FetchRestaurantsException(
            'Ristorante non trovato: \$restaurantId');
      }
      final map = data.first as Map<String, dynamic>;

      // Costruzione DTO
      RestaurantDto? restaurantDto = RestaurantDto.fromMap(map);
      // Se presente l'immagine su firestore la carico da li nel DTO
      final firestoreRestaurantImage =
          await GetIt.instance<FirebaseStorageService>()
              .fetchRestaurantImageUrlFromFirebase(restaurantDto.id.toString());
      if (firestoreRestaurantImage != null) {
        restaurantDto.coverImageUrl = firestoreRestaurantImage;
      }

      _restaurantByIdCache[restaurantId] = restaurantDto;
      _restaurantByIdCachedAt[restaurantId] = DateTime.now();
      return restaurantDto;
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } on DashboardServiceException {
      rethrow;
    } catch (e) {
      throw DashboardServiceException(
          'Errore imprevisto fetch ristorante: \$e');
    }
  }

  Future<List<FiltersDto>> fetchAllFilters() async {
    if (_cacheValid(_filtersCachedAt, _cacheTTL) && _filtersCache != null) {
      return _filtersCache!;
    }
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      final raw = [
        {'id': 1, 'name': 'Italiano'},
        {'id': 2, 'name': 'Cinese'},
        {'id': 3, 'name': 'Fast Food'},
        {'id': 4, 'name': 'Prezzo: basso → alto'},
        {'id': 5, 'name': 'Distanza: vicino → lontano'},
        {'id': 6, 'name': 'Valutazione: ⭐️⭐️⭐️+'},
        {'id': 7, 'name': 'Aperto 24h'},
      ];
      final list = raw.map((e) => FiltersDto.fromMap(e)).toList();
      _filtersCache = list;
      _filtersCachedAt = DateTime.now();
      return list;
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } on DashboardServiceException {
      rethrow;
    } catch (e) {
      throw DashboardServiceException('Errore imprevisto fetch filtri: \$e');
    }
  }

  Future<List<AllergenDto>> fetchAllAllergens() async {
    if (_cacheValid(_allergensCachedAt, _cacheTTL) && _allergensCache != null) {
      return _allergensCache!;
    }
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
      _allergensCache = list;
      _allergensCachedAt = DateTime.now();
      return list;
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } on DashboardServiceException {
      rethrow;
    } catch (e) {
      throw DashboardServiceException('Errore imprevisto fetch allergeni: \$e');
    }
  }

  Future<List<PizzaDto>> fetchPizzaByrestaurantId(int restaurantId) async {
    try {
      final qb = DirectusQueryBuilder()
        ..fields([
          '*',
          'restaurant.id',
          'cover_image.id',
          'cover_image.filename_download',
          'allergens.allergens_id.id',
          'allergens.allergens_id.name'
        ])
        ..populate(['cover_image', 'allergens.allergens_id'])
        ..filter({
          'restaurant': {'_eq': restaurantId}
        });
      final endpoint = DashboardEndpoints.getPizzas(queryBuilder: qb);
      final resp = await _apiService.get(endpoint);
      if (resp.statusCode != 200) throw FetchPizzasException();
      final rawData = resp.data['data'] as List<dynamic>? ?? [];
      return rawData
          .map((e) => PizzaDto.fromMap(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } on DashboardServiceException {
      rethrow;
    } catch (e) {
      throw DashboardServiceException('Errore imprevisto fetch pizze: \$e');
    }
  }

  Future<PizzaDto> fetchPizzaById(int pizzaId) async {
    final cachedAt = _pizzaByIdCachedAt[pizzaId];
    if (_cacheValid(cachedAt, _byIdTTL) &&
        _pizzaByIdCache.containsKey(pizzaId)) {
      return _pizzaByIdCache[pizzaId]!;
    }
    try {
      final qb = DirectusQueryBuilder()
        ..fields([
          '*',
          'restaurant.id',
          'cover_image.id',
          'cover_image.filename_download',
          'allergens.allergens_id.id',
          'allergens.allergens_id.name'
        ])
        ..populate(['cover_image', 'allergens.allergens_id'])
        ..filter({
          'id': {'_eq': pizzaId}
        });
      final endpoint = DashboardEndpoints.getPizzas(queryBuilder: qb);
      final resp = await _apiService.get(endpoint);
      if (resp.statusCode != 200) throw FetchPizzasException();
      final data = resp.data['data'] as List<dynamic>?;
      if (data == null || data.isEmpty)
        throw FetchPizzasException('Pizza non trovata: \$pizzaId');
      final pizza = PizzaDto.fromMap(data.first as Map<String, dynamic>);
      _pizzaByIdCache[pizzaId] = pizza;
      _pizzaByIdCachedAt[pizzaId] = DateTime.now();
      return pizza;
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } on DashboardServiceException {
      rethrow;
    } catch (e) {
      throw DashboardServiceException('Errore imprevisto fetch pizza: \$e');
    }
  }

  Future<List<PizzaDto>> fetchPizzaByrestaurantIdExcludingAllergens({
    required int restaurantId,
    required List<int> excludedAllergenIds,
  }) async {
    try {
      final allPizzas = await fetchPizzaByrestaurantId(restaurantId);
      return allPizzas.where((pizza) {
        final ids = pizza.allergens.map((a) => a.id).toSet();
        return ids.intersection(excludedAllergenIds.toSet()).isEmpty;
      }).toList();
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } on DashboardServiceException {
      rethrow;
    } catch (e) {
      throw DashboardServiceException(
          'Errore imprevisto fetch pizze per allergeni: \$e');
    }
  }
}
