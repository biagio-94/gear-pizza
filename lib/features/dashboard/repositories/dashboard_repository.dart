import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:gearpizza/common/api/endpoints.dart';
import 'package:gearpizza/common/models/items_allergens.dart';
import 'package:gearpizza/common/models/items_pizzas.dart';
import 'package:gearpizza/common/models/read_items_allergens200_response.dart';
import 'package:gearpizza/common/models/read_items_pizzas200_response.dart';
import 'package:gearpizza/common/utils/directus_query_builder.dart';
import 'package:gearpizza/common/utils/exception_handler.dart';
import 'package:gearpizza/common/utils/serializers.dart';
import 'package:gearpizza/features/dashboard/api/dashboard_endpoints.dart';
import 'package:gearpizza/features/dashboard/models/alergen_dto.dart';
import 'package:gearpizza/features/dashboard/models/filters_dto.dart';
import 'package:gearpizza/features/dashboard/models/pizza_dto.dart';
import 'package:gearpizza/features/dashboard/models/restaurants_dto.dart';
import 'package:gearpizza/common/services/api_service.dart';
import 'package:gearpizza/features/dashboard/services/dashboard_service_exception.dart';

class DashboardRepository {
  final ApiService _apiService;

  DashboardRepository(this._apiService);

  Future<List<RestaurantDto>> fetchAllRestaurants() async {
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

      if (resp.statusCode != 200) {
        throw FetchRestaurantsException();
      }

      final List<dynamic> rawData = resp.data['data'] ?? [];

      return rawData
          .map((item) => RestaurantDto.fromMap(item as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } on DashboardServiceException {
      rethrow;
    } catch (e) {
      throw DashboardServiceException('Errore imprevisto fetch ristoranti: $e');
    }
  }

  Future<List<FiltersDto>> fetchAllFilters() async {
    try {
      // Simulo un piccolo delay da rete
      await Future.delayed(const Duration(milliseconds: 500));

      // Mock Filtri generici per filtrare ristoranti
      final List<Map<String, dynamic>> rawData = [
        {'id': 1, 'name': 'Italiano'},
        {'id': 2, 'name': 'Cinese'},
        {'id': 3, 'name': 'Fast Food'},
        {'id': 4, 'name': 'Prezzo: basso → alto'},
        {'id': 5, 'name': 'Distanza: vicino → lontano'},
        {'id': 6, 'name': 'Valutazione: ⭐️⭐️⭐️+'},
        {'id': 7, 'name': 'Aperto 24h'},
      ];

      return rawData.map((item) => FiltersDto.fromMap(item)).toList();
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } on DashboardServiceException {
      rethrow;
    } catch (e) {
      throw DashboardServiceException('Errore imprevisto fetch filtri: $e');
    }
  }

  Future<List<AllergenDto>> fetchAllAllergens() async {
    try {
      final endpoint = DashboardEndpoints.getAllergens();
      final resp = await _apiService.get(endpoint);

      if (resp.statusCode != 200) {
        throw FetchAllergensException();
      }

      final parsed = standardSerializers.deserializeWith(
        ReadItemsAllergens200Response.serializer,
        resp.data,
      );
      final builtList = parsed?.data?.toList() ?? [];

      return builtList.map((item) {
        final raw = standardSerializers.serializeWith(
          ItemsAllergens.serializer,
          item,
        ) as Map<String, dynamic>;
        return AllergenDto.fromMap(raw);
      }).toList();
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } on DashboardServiceException {
      rethrow;
    } catch (e) {
      throw DashboardServiceException('Errore imprevisto fetch ristoranti: $e');
    }
  }

  Future<List<PizzaDto>> fetchPizzasByRestaurant(int restaurantId) async {
    try {
      final query = DirectusQueryBuilder().fields(<String>['*']).filter({
        'restaurant': {'_eq': restaurantId}
      });
      final endpoint = DashboardEndpoints.getPizzas(queryBuilder: query);
      final resp = await _apiService.get(endpoint);

      if (resp.statusCode != 200) {
        throw FetchPizzasException();
      }

      final parsed = standardSerializers.deserializeWith(
        ReadItemsPizzas200Response.serializer,
        resp.data,
      );
      final builtList = parsed?.data?.toList() ?? [];

      return builtList.map((item) {
        final raw = standardSerializers.serializeWith(
          ItemsPizzas.serializer,
          item,
        ) as Map<String, dynamic>;
        return PizzaDto.fromMap(raw);
      }).toList();
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } on DashboardServiceException {
      rethrow;
    } catch (e) {
      throw DashboardServiceException('Errore imprevisto fetch ristoranti: $e');
    }
  }
}
