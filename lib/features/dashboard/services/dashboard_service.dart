import 'package:dio/dio.dart';
import 'package:gearpizza/features/auth/services/auth_service.dart';
import '../../../common/services/api_service_exception.dart';
import '../../../common/utils/exception_handler.dart';
import '../repositories/dashboard_repository.dart';

class DashboardService {
  final DashboardRepository dashboardRepository;
  final AuthService authService;
  DashboardService(this.dashboardRepository, this.authService);

  Future<List<String>> fetchPreventivi({required String? idRef}) async {
    try {
      return await dashboardRepository.fetchPreventivi(idRef: idRef);
    } on ApiServiceException catch (_) {
      rethrow;
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } catch (e) {
      throw GenericException();
    }
  }

  Future<bool?> getEliminaPreventivo({required int id}) async {
    try {
      return await dashboardRepository.eliminaPreventivo(id: id);
    } on ApiServiceException catch (_) {
      rethrow;
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } catch (e) {
      throw GenericException();
    }
  }

  Future<void> saveTutorialCompleted() async {
    // try {
    //   return await authService.saveTutorialCompleted();
    // } on ApiServiceException catch (_) {
    //   rethrow;
    // } on DioException catch (e) {
    //   throw mapDioExceptionToCustomException(e);
    // } catch (e) {
    //   throw GenericException();
    // }
  }
}
