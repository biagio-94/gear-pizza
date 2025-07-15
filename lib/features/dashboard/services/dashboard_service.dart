import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:gearpizza/common/model/funzionalita.dart';
import 'package:gearpizza/common/model/preventivo_elenco_item.dart';
import 'package:gearpizza/features/auth/models/auth_gear_pizza_user.dart';
import 'package:gearpizza/features/auth/services/auth_service.dart';
import '../../../common/services/api_service_exception.dart';
import '../../../common/utils/exception_handler.dart';
import '../repositories/dashboard_repository.dart';

class DashboardService {
  final DashboardRepository dashboardRepository;
  final AuthService authService;
  DashboardService(this.dashboardRepository, this.authService);

  Future<List<PreventivoElencoItem>> fetchPreventivi(
      {required String? idRef}) async {
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
