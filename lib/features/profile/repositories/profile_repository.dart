import 'package:dio/dio.dart';
import 'package:gearpizza/common/model/intermediario.dart';
import 'package:gearpizza/common/services/api_service.dart';
import 'package:gearpizza/common/services/api_service_exception.dart';
import 'package:gearpizza/common/utils/exception_handler.dart';
import 'package:gearpizza/common/utils/serializers.dart';
import 'package:gearpizza/features/auth/api/auth_endpoints.dart';
import 'package:gearpizza/features/auth/services/auth_service_exception.dart';
import 'package:gearpizza/features/notifications/repositories/notification_repository.dart';

class ProfileRepository {
  final ApiService _apiService;
  final NotificationRepository _notificationRepository;

  ProfileRepository(this._apiService, this._notificationRepository);

  Future<bool> updateSendNotificationStatus({required bool isEnabled}) async {
    try {
      return await _notificationRepository.updateFCMtoken(
        fcmToken: "",
        notifyPermission: isEnabled,
      );
    } catch (e) {
      throw AuthServiceException(e.toString());
    }
  }

  Future<Intermediario> fetchProfileData(
      {required String codiceCollegato}) async {
    try {
      // Eseguo una richiesta HTTP utilizzando l'endpoint AuthEndpoints.intermediari
      Response response = await _apiService.get(AuthEndpoints.intermediari);

      // Controllo se la risposta ha uno status code 200 (OK)
      if (response.statusCode == 200) {
        // Se il codice collegato è vuoto, lancio un'eccezione specifica
        if (codiceCollegato.isEmpty) {
          throw GenericException(
              "Non è stato possibile reperire i dati profilo, esegui nuovamente l'accesso.");
        }

        // Suppongo che response.data sia una lista dinamica (List<dynamic>) composta da mappe,
        // dove ogni mappa rappresenta i dati di un intermediario.
        final List<dynamic> jsonList = response.data;

        // Procedo alla deserializzazione di ciascun elemento della lista in un oggetto Intermediario.
        // Utilizzo il metodo deserializeWith e filtro eventuali elementi non validi con whereType.
        List<Intermediario> intermediari = jsonList
            .map((json) => standardSerializers.deserializeWith(
                Intermediario.serializer, json))
            .whereType<Intermediario>()
            .toList();

        // Filtro la lista degli intermediari per trovare quello che possiede
        // il campo 'collegato' corrispondente al codice collegato dell'utente.
        // Se non viene trovato alcun elemento che soddisfi la condizione, lancio un'eccezione.
        final intermediario = intermediari.firstWhere(
          (i) => i.collegato == codiceCollegato,
          orElse: () => throw GenericException(
              "Intermediario non trovato per il codice collegato $codiceCollegato"),
        );

        // Restituisco l'intermediario trovato
        return intermediario;
      } else {
        // Se lo status code non è 200, lancio un'eccezione indicando il fallimento nel caricamento dei dati.
        throw GenericException("Failed to load intermediario data");
      }
    } on AuthServiceException catch (_) {
      // Se rilevo un'eccezione specifica del servizio di autenticazione, la rilancio
      rethrow;
    } on DioException catch (e) {
      // Se intercetto un'eccezione da Dio (problemi di rete, timeout, ecc.),
      // la converto in un'eccezione personalizzata tramite la funzione di mapping.
      throw mapDioExceptionToCustomException(e);
    } catch (e) {
      // Per ogni altro tipo di eccezione, lancio una GenericException
      throw GenericException("Error fetching intermediario data: $e");
    }
  }
}
