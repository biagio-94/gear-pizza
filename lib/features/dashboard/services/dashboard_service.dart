import 'package:dio/dio.dart';
import 'package:gearpizza/features/auth/services/auth_service.dart';
import 'package:gearpizza/features/dashboard/models/filters_dto.dart';
import '../../../common/services/api_service_exception.dart';
import '../../../common/utils/exception_handler.dart';
import '../repositories/dashboard_repository.dart';
import 'package:gearpizza/features/dashboard/models/restaurants_dto.dart';
import 'package:gearpizza/features/dashboard/models/alergen_dto.dart';
import 'package:gearpizza/features/dashboard/models/pizza_dto.dart';

class DashboardService {
  final DashboardRepository dashboardRepository;
  final AuthService authService;

  DashboardService(this.dashboardRepository, this.authService);

  /// Ritorna la lista di ristoranti come DTO leggeri per la UI
  Future<List<RestaurantDto>> fetchAllRestaurants() async {
    try {
      return await dashboardRepository.fetchAllRestaurants();
    } on ApiServiceException catch (_) {
      rethrow;
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } catch (e) {
      throw GenericException();
    }
  }

  // Ritorno un ristorante recuperandolo per id
  Future<RestaurantDto> fetchRestaurantById({required int restaurantId}) async {
    try {
      return await dashboardRepository.fetchRestaurantById(
          restaurantId: restaurantId);
    } on ApiServiceException catch (_) {
      rethrow;
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } catch (e) {
      throw GenericException();
    }
  }

  /// Ritorna la lista di filtri mock per i ristoranti
  Future<List<FiltersDto>> fetchAllFilters() async {
    try {
      return await dashboardRepository.fetchAllFilters();
    } on ApiServiceException catch (_) {
      rethrow;
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } catch (e) {
      throw GenericException();
    }
  }

  /// Ritorna la lista di allergeni
  Future<List<AllergenDto>> fetchAllAllergens() async {
    try {
      return await dashboardRepository.fetchAllAllergens();
    } on ApiServiceException catch (_) {
      rethrow;
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } catch (e) {
      throw GenericException();
    }
  }

  /// Ritorna la lista di pizze per un dato ristorante
  Future<List<PizzaDto>> fetchPizzaByrestaurantId({
    required int restaurantId,
  }) async {
    try {
      return await dashboardRepository.fetchPizzaByrestaurantId(restaurantId);
    } on ApiServiceException catch (_) {
      rethrow;
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } catch (e) {
      throw GenericException();
    }
  }

  /// Ritorna la lista di pizze che NON contengono gli allergeni indicati
  Future<List<PizzaDto>> fetchPizzasExcludingAllergens({
    required int restaurantId,
    required List<int> excludedAllergenIds,
  }) async {
    try {
      return await dashboardRepository
          .fetchPizzaByrestaurantIdExcludingAllergens(
        restaurantId: restaurantId,
        excludedAllergenIds: excludedAllergenIds,
      );
    } on ApiServiceException catch (_) {
      rethrow;
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } catch (_) {
      throw GenericException();
    }
  }
}
