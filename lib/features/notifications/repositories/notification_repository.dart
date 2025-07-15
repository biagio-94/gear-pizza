import 'package:dio/dio.dart';
import 'package:gearpizza/common/model/gestione_notifiche_request.dart';
import 'package:gearpizza/common/model/notifiche_elenco_item.dart';
import 'package:gearpizza/common/services/api_service.dart';
import 'package:gearpizza/common/services/api_service_exception.dart';
import 'package:gearpizza/common/utils/exception_handler.dart';
import 'package:gearpizza/common/utils/serializers.dart';
import 'package:gearpizza/features/notifications/api/notification_endpoint.dart';
import 'package:gearpizza/features/notifications/models/notification_model.dart';

class NotificationRepository {
  final ApiService _apiService;
  const NotificationRepository(this._apiService);

  Future<bool> updateFCMtoken({
    required String fcmToken,
    required bool notifyPermission,
  }) async {
    try {
      final request = GestioneNotificheRequest(
        (b) => b
          ..notifiche = notifyPermission
          ..tokenFirebase = fcmToken.isNotEmpty ? fcmToken : "",
      );
      final serializedRequest = standardSerializers.serializeWith(
          GestioneNotificheRequest.serializer, request);
      final response = await _apiService.post(
        NotificationEndpoint.updateFCMtoken,
        data: serializedRequest,
      );
      return response.data ?? false;
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } catch (e) {
      throw GenericException();
    }
  }

  Future<List<AppNotification>> getNotifications() async {
    try {
      final now = DateTime.now();
      final notificationsUrl = NotificationEndpoint.getNotifications(
        dateFrom: now,
        dateTo: now.add(const Duration(days: 7)),
      );
      final response = await _apiService.get(notificationsUrl);

      if (response.statusCode == 200) {
        final serializedData = response.data as List;

        final deserializedData = serializedData
            .map((item) =>
                standardSerializers.deserializeWith<NotificheElencoItem>(
                  NotificheElencoItem.serializer,
                  item as Map<String, dynamic>,
                ))
            .whereType<NotificheElencoItem>()
            .toList();

        return deserializedData
            .map((item) => AppNotification.convertToAppNotification(item))
            .toList();
      } else {
        throw GenericException("Errore durante il recupero delle notifiche");
      }
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } catch (e) {
      throw GenericException();
    }
  }
}
