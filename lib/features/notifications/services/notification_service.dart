import 'dart:convert';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:gearpizza/common/utils/get_device_id.dart';
import 'package:gearpizza/features/notifications/bloc/notification_bloc.dart';
import 'package:gearpizza/features/notifications/bloc/notification_event.dart';
import 'package:gearpizza/features/notifications/models/notification_model.dart';
import 'package:gearpizza/common/services/secure_storage_service.dart';
import 'package:gearpizza/features/notifications/repositories/notification_repository.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await NotificationService.instance.setupFlutterNotifications();
  await NotificationService.instance.showNotification(message);
}

class NotificationService {
  NotificationService._();

  static final NotificationService instance = NotificationService._();

  // Firebase Messaging
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  // Flutter Local Notifications
  final FlutterLocalNotificationsPlugin _localNotification =
      FlutterLocalNotificationsPlugin();

  bool _isFlutterLocalNotificationsInitialized = false;

  final notificasionBloc = GetIt.instance<NotificationBloc>();
  final _notificationRepository = GetIt.instance<NotificationRepository>();

  Future<void> init() async {
    try {
      if (!await isPhysicalDevice()) {
        debugPrint('Emulatore rilevato: salto init di FCM');
        return;
      }
      //BackgroundHandler
      FirebaseMessaging.onBackgroundMessage(
          _firebaseMessagingBackgroundHandler);
      // Request permission
      await _requestPermission();
      //Setup Handlers
      await _setupMessageHandlers();
      // Listen for token refresh
      FirebaseMessaging.instance.onTokenRefresh.listen((newToken) async {
        try {
          debugPrint('Refreshed FCM Token: $newToken');
          bool notificheAutorizzate =
              await checkAndRequestNotificationPermissions();

          await _notificationRepository.updateFCMtoken(
              fcmToken: newToken, notifyPermission: notificheAutorizzate);
        } catch (e) {
          debugPrint("Errore su Refresh FCM token: ${e.toString()}");
        }
      });
    } catch (e) {
      debugPrint("Errore initializzazione firebase: ${e.toString()}");
    }
  }

  Future<void> _requestPermission() async {
    final settings = await _messaging.requestPermission(
        alert: true,
        badge: true,
        sound: true,
        provisional: false,
        announcement: false,
        carPlay: false,
        criticalAlert: false);

    debugPrint('Permission Status: ${settings.authorizationStatus}');
  }

  Future<void> setupFlutterNotifications() async {
    if (_isFlutterLocalNotificationsInitialized) {
      return;
    }
    const channel = AndroidNotificationChannel(
      'high_importance_channel',
      'High important notification',
      description: 'This channel is used for important notifications.',
      importance: Importance.high,
    );

    await _localNotification
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    const initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcer');

    // iOS Setup
    final initializationSettingsDarwin = DarwinInitializationSettings(
      onDidReceiveLocalNotification: (id, title, body, payload) async {
        // Mostra manualmente la notifica in modalità foreground
        await _localNotification.show(
          id,
          title,
          body,
          const NotificationDetails(
            iOS: DarwinNotificationDetails(
              presentAlert: true,
              presentBadge: true,
              presentSound: true,
            ),
          ),
          payload: payload,
        );

        // Esegui il salvataggio della notifica
        final notification = AppNotification(
          id: id.toString(),
          title: title ?? 'No Title',
          body: body ?? 'No Body',
          timestamp: DateTime.now(),
          data: payload != null ? jsonDecode(payload) : null,
        );
        await _saveNotificationToStorage(notification);
      },
    );

    final initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
    );

    await _localNotification.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (details) {
        // Gestisci il tap sulla notifica (navigazione o altra logica)
        // da gestire in futuro
        //_handleNotificationTap(details.payload);
      },
    );

    _isFlutterLocalNotificationsInitialized = true;
  }

  // void _handleNotificationTap(String? payload) {
  //   if (payload != null) {
  //     final Map<String, dynamic> data = jsonDecode(payload);
  //     // Esempio: se il payload contiene una chiave "screen", naviga alla schermata desiderata
  //     if (data.containsKey('screen')) {
  //       final String screen = data['screen'];
  //       if (screen == 'notification_detail') {
  //         final String notificationId = data['id'];
  //         _navigateToNotificationDetail(notificationId);
  //       }
  //     }
  //   }
  // }

  // void _navigateToNotificationDetail(String notificationId) {
  //   final router = GetIt.instance<MainRouter>().router;
  //   router.push('/dashboard/notifications', extra: notificationId);
  // }

  Future<bool> checkAndRequestNotificationPermissions() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    // Controllo lo stato attuale dei permessi per le notifiche
    NotificationSettings settings = await messaging.getNotificationSettings();

    // Se lo stato non è ancora determinato, richiedo i permessi
    if (settings.authorizationStatus == AuthorizationStatus.notDetermined) {
      settings = await messaging.requestPermission(
        alert: true,
        badge: true,
        sound: true,
      );
    }

    // true se autorizzato (anche in modalità provvisoria), false altrimenti
    if (settings.authorizationStatus == AuthorizationStatus.authorized ||
        settings.authorizationStatus == AuthorizationStatus.provisional) {
      debugPrint('Permesso per notifiche autorizzato o provvisorio');
      return true;
    } else {
      debugPrint('Permesso per notifiche negato');
      return false;
    }
  }

  Future<void> showNotification(RemoteMessage message) async {
    RemoteNotification? notification = message.notification;
    // Map<String,dynamic>? data = message.data; Se dovremo prendere data in futuro
    AndroidNotification? android = message.notification?.android;
    if (notification != null && android != null) {
      await _localNotification.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
              android: AndroidNotificationDetails(
                'high_importance',
                'High importance Notification',
                importance: Importance.high,
                priority: Priority.high,
                icon: '@mipmap/ic_launcher',
              ),
              iOS: const DarwinNotificationDetails(
                presentAlert: true,
                presentBadge: true,
                presentSound: true,
              )),
          payload: message.data.toString());
    }
  }

  Future<void> _setupMessageHandlers() async {
    // foreground
    FirebaseMessaging.onMessage.listen((message) {
      showNotification(message);
      _onMessageOpenedApp(message);
    });
    // background
    FirebaseMessaging.onMessageOpenedApp.listen(_onMessageOpenedApp);
    // opened app
    final initialMessage = await _messaging.getInitialMessage();
    if (initialMessage != null) {
      _onMessageOpenedApp(initialMessage);
    }
  }

  Future<void> _onMessageOpenedApp(RemoteMessage message) async {
    debugPrint('🔔 Notifica cliccata con dati: ${message.data}');

    final notification = AppNotification(
      id: message.messageId ?? DateTime.now().millisecondsSinceEpoch.toString(),
      title: message.notification?.title ?? 'No Title',
      body: message.notification?.body ?? 'No Body',
      timestamp: DateTime.now(),
      data: message.data.isNotEmpty ? message.data : null,
    );
    debugPrint("messageId:${message.toMap()}");

    await _saveNotificationToStorage(notification);
  }

  Future<List<AppNotification>> _fetchBackendNotifications() async {
    return await _notificationRepository.getNotifications();
  }

  Future<void> _saveNotificationToStorage(
      AppNotification newNotification) async {
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
        await _fetchBackendNotifications();

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

    // 4. Incorpo anche la nuova notifica (ad esempio ricevuta da un push).
    // Questo garantisce che, anche se il backend non l'ha ancora sincronizzata, non la perdo.
    if (notificationsMap.containsKey(newNotification.id)) {
      final localNotif = notificationsMap[newNotification.id]!;
      notificationsMap[newNotification.id] =
          newNotification.copyWith(read: localNotif.read);
    } else {
      notificationsMap[newNotification.id] = newNotification;
    }

    // 5. Converto la mappa in una lista e rimuovo le notifiche più vecchie di un mese.
    // In questo modo evito di mantenere dati obsoleti e miglioro le performance.
    List<AppNotification> mergedNotifications =
        notificationsMap.values.toList();
    mergedNotifications = mergedNotifications.toList();

    // 6. Aggiorno il BLoC con la lista aggiornata.
    // Questo aggiorna l'interfaccia dell'app con le notifiche più recenti.
    GetIt.instance<NotificationBloc>()
        .add(UpdateNotifications(mergedNotifications));

    // 7. Salvo la lista aggiornata nel SecureStorage per garantire persistenza dei dati.
    final List<Map<String, dynamic>> notificationsMapList =
        mergedNotifications.map((notif) => notif.toMap()).toList();
    await SecureStorageService.instance.writeSecureData(
      'notifications',
      jsonEncode(notificationsMapList),
    );

    debugPrint(
        '✅ Notifiche salvate/aggiornate, totale: ${mergedNotifications.length}');
  }
}
