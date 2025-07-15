import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/features/notifications/bloc/notification_event.dart';
import 'package:gearpizza/features/notifications/bloc/notification_state.dart';
import 'package:gearpizza/features/notifications/models/notification_model.dart';
import 'package:gearpizza/common/services/secure_storage_service.dart';
import 'package:gearpizza/features/notifications/utils/notification_helper.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc() : super(NotificationState.initial()) {
    on<MarkAsReadEvent>(_onMarkAsRead);
    on<UpdateNotifications>(_onUpdateNotifications);
    on<InitializeNotificationsEvent>(_onInitializeNotifications);
    // Inizializzo subito il bloc per caricare le notifiche salvate
    add(InitializeNotificationsEvent());
  }

  // Metodo per inizializzare le notifiche a partire dal SecureStorage.
  // Leggo le notifiche salvate localmente, le decodifico e aggiorno lo stato del bloc.
  void _onInitializeNotifications(InitializeNotificationsEvent event,
      Emitter<NotificationState> emit) async {
    try {
      final storedNotifications =
          await NotificationHelper().mergedNotification();
      // Leggo le notifiche salvate in formato JSON dal SecureStorage

      if (storedNotifications.isNotEmpty) {
        // Creo una lista di AppNotification a partire dalle mappe
        final notifications = storedNotifications
            .map((notificationMap) => AppNotification.fromMap(notificationMap))
            .toList();

        // Aggiorno lo stato del bloc con le notifiche lette dal SecureStorage
        emit(state.updateNotifications(notifications));
      } else {
        // Se non ho notifiche salvate, emetto uno stato con una lista vuota
        emit(state.updateNotifications([]));
      }
    } catch (e) {
      // Gestisco eventuali errori durante la lettura dal SecureStorage
      debugPrint('Errore nell\'inizializzazione delle notifiche: $e');
      // Mantengo lo stato attuale in caso di errore
      emit(state);
    }
  }

  void _onUpdateNotifications(
      UpdateNotifications event, Emitter<NotificationState> emit) async {
    try {
      // Aggiorno lo stato con la nuova lista di notifiche
      emit(state.updateNotifications(event.notifications));
    } catch (e) {
      debugPrint('Errore nell\'aggiornamento delle notifiche: $e');
    }
  }

  // Metodo per segnare una notifica come letta.
  // Utilizzo l'id della notifica contenuta nell'evento per trovare quella corretta.
  void _onMarkAsRead(
      MarkAsReadEvent event, Emitter<NotificationState> emit) async {
    // Aggiorno lo stato del bloc segnando come letta la notifica che corrisponde all'id
    final updatedState = state.markAsRead(event.notificationId);

    // Emetto lo stato aggiornato
    emit(updatedState);

    try {
      // Converto la lista aggiornata di notifiche in formato JSON
      // e la salvo nel SecureStorage per la persistenza locale
      final notificationsJson = jsonEncode(
        updatedState.notifications.map((notif) => notif.toMap()).toList(),
      );

      await SecureStorageService.instance.writeSecureData(
        'notifications',
        notificationsJson,
      );
    } catch (e) {
      // Gestisco eventuali errori durante il salvataggio nel SecureStorage
      debugPrint('Errore nel salvataggio delle notifiche aggiornate: $e');
    }
  }
}
