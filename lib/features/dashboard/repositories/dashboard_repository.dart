import 'package:flutter/material.dart';
import 'package:gearpizza/common/model/funzionalita.dart';
import 'package:gearpizza/common/model/preventivo_elenco_item.dart';
import 'package:gearpizza/common/utils/serializers.dart';
import 'package:gearpizza/features/dashboard/api/dashboard_endpoints.dart';
import '../../../common/services/api_service.dart';
import 'package:dio/dio.dart';

class DashboardRepository {
  final ApiService _apiService;

  DashboardRepository(this._apiService);
  List<Funzionalita>? _cacheFunzionalita;

  Future<List<PreventivoElencoItem>> fetchPreventivi(
      {required String? idRef}) async {
    try {
      Response response =
          await _apiService.get(DashboardEndpoints.getPreventivi(idRef: idRef));

      if (response.statusCode == 200) {
        final serializedData = response.data as List;

        // Deserializza i dati usando standardSerializers
        final deserializedData = serializedData.map((item) {
          return standardSerializers.deserializeWith(
            PreventivoElencoItem.serializer,
            item as Map<String, dynamic>,
          );
        }).toList();
        debugPrint("preventivi: ${deserializedData.toString()}");

        return deserializedData
            .where((e) => e != null)
            .cast<PreventivoElencoItem>()
            .toList();
      } else {
        throw Exception("Errore durante la richiesta: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Errore durante il fetch dei preventivi: $e");
    }
  }

  Future<List<Funzionalita>> fetchFunzionalita() async {
    try {
      if (_cacheFunzionalita != null && _cacheFunzionalita!.isNotEmpty) {
        return _cacheFunzionalita!;
      }
      // Effettua la richiesta alle API
      Response response =
          await _apiService.get(DashboardEndpoints.getFunzionalita());

      if (response.statusCode == 200) {
        final serializedData = response.data as List;

        final deserializedData = serializedData.map((item) {
          return standardSerializers.deserializeWith(
            Funzionalita.serializer,
            item as Map<String, dynamic>,
          );
        }).toList();

        _cacheFunzionalita = deserializedData
            .where((e) => e != null)
            .cast<Funzionalita>()
            .toList();

        return _cacheFunzionalita!;
      } else {
        throw Exception("Errore durante la richiesta: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Errore durante il fetch delle funzionalità: $e");
    }
  }

  Future<bool?> eliminaPreventivo({required int id}) async {
    try {
      Response response =
          await _apiService.get(DashboardEndpoints.getEliminaPreventivo(id));

      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      throw Exception("Error fetching preventivo id: $e");
    }
  }
}
