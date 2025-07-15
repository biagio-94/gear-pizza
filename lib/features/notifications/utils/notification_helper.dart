import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:gearpizza/common/services/secure_storage_service.dart';
import 'package:gearpizza/features/notifications/models/notification_model.dart';
import 'package:gearpizza/features/notifications/repositories/notification_repository.dart';

class NotificationHelper {
  final _notificationRepository = GetIt.instance<NotificationRepository>();
  Future<List<Map<String, dynamic>>> mergedNotification() async {
    // 1. Recupero le notifiche salvate localmente dal SecureStorage.
    // Questo mi permette di avere sempre accesso alle notifiche anche offline.
    final storedData =
        await SecureStorageService.instance.readSecureData('notifications');

    List<AppNotification> localNotifications = [];
    if (storedData != null) {
      final List<dynamic> decoded = jsonDecode(storedData);
      localNotifications = decoded
          .map((item) => AppNotification.fromMap(item as Map<String, dynamic>))
          .toList();
    }

    // 2. Effettuo il fetch delle notifiche dal backend.
    // In questo modo posso confrontarle con quelle locali e mantenerle sincronizzate.
    List<AppNotification> backendNotifications =
        await _notificationRepository.getNotifications();

    // 3. Unisco le notifiche locali e quelle del backend evitando duplicati.
    // Uso una mappa con chiave 'id' per poter aggiornare correttamente lo stato "read".
    Map<String, AppNotification> notificationsMap = {};

    // Aggiungo prima tutte le notifiche locali.
    for (var notif in localNotifications) {
      notificationsMap[notif.id] = notif;
    }

    // Ora unisco le notifiche provenienti dal backend.
    for (var backendNotif in backendNotifications) {
      if (notificationsMap.containsKey(backendNotif.id)) {
        // Se una notifica esiste già in locale, preservo il suo stato "read".
        final localNotif = notificationsMap[backendNotif.id]!;
        notificationsMap[backendNotif.id] =
            backendNotif.copyWith(read: localNotif.read);
      } else {
        // Se la notifica non esiste in locale, la aggiungo mantenendo il read di default su false.
        notificationsMap[backendNotif.id] = backendNotif.copyWith(read: false);
      }
    }

    // 5. Converto la mappa in una lista e rimuovo le notifiche più vecchie di un mese.
    // In questo modo evito di mantenere dati obsoleti e miglioro le performance.
    List<AppNotification> mergedNotifications =
        notificationsMap.values.toList();
    mergedNotifications = mergedNotifications.toList();

    // 7. Salvo la lista aggiornata nel SecureStorage per garantire persistenza dei dati.
    final List<Map<String, dynamic>> notificationsMapList =
        mergedNotifications.map((notif) => notif.toMap()).toList();
    await SecureStorageService.instance.writeSecureData(
      'notifications',
      jsonEncode(notificationsMapList),
    );

    debugPrint(
        '✅ Notifiche salvate/aggiornate, totale: ${mergedNotifications.length}');

    return notificationsMapList;
  }
}
