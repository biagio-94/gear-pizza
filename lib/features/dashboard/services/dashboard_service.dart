import 'package:dio/dio.dart';
import 'package:gearpizza/features/auth/services/auth_service.dart';
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
  Future<List<PizzaDto>> fetchPizzasByRestaurant({
    required int restaurantId,
  }) async {
    try {
      return await dashboardRepository.fetchPizzasByRestaurant(restaurantId);
    } on ApiServiceException catch (_) {
      rethrow;
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } catch (e) {
      throw GenericException();
    }
  }
}
