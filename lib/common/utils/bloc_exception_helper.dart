import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:gearpizza/common/services/api_service_exception.dart';
import 'package:gearpizza/common/utils/get_device_id.dart';
import 'package:gearpizza/features/auth/services/auth_service_exception.dart';
import 'package:package_info_plus/package_info_plus.dart';

/// Questa classe `ExecutionHelper` è pensata per semplificare la gestione di
/// operazioni asincrone che necessitano di:
/// - mostrare/nascondere indicatori di caricamento opzionali,
/// - gestire eccezioni specifiche di business (es: `AuthServiceException`, `ApiServiceException`),
/// - tracciare errori in Crashlytics (Firebase),
/// - e notificare eventuali errori all’interfaccia tramite callback.
///
/// ### Come la uso:
/// Chiamo il metodo statico `run`, passando l’azione asincrona da eseguire.
/// Se voglio, passo anche funzioni per mostrare/nascondere il loading e per
/// gestire la notifica di errori (es: mostrare un snackbar).
///
/// Il metodo gestisce automaticamente:
/// - il wrapping dell’azione con show/hide loading,
/// - il catching delle eccezioni specifiche e di altre generiche,
/// - il logging dettagliato su Crashlytics con informazioni sul device, utente, app.
///
/// Se non passo `showLoading` o `hideLoading`, non mostro nessun loading.
/// Se non passo `onError`, gli errori non vengono notificati all’interfaccia.
///
/// ### Parametri principali:
/// - `action`: la funzione asincrona da eseguire, obbligatoria.
/// - `showLoading`: callback per mostrare il loading (opzionale).
/// - `hideLoading`: callback per nascondere il loading (opzionale).
/// - `onError`: callback per notificare il messaggio d’errore (opzionale).
/// - `loadingText`: testo opzionale da mostrare (non gestito internamente ma utile per chi implementa il loading).
class ExecutionHelper {
  /// Metodo principale per eseguire un’azione con gestione errori e loading.
  static Future<void> run({
    Future<void> Function()? action,
    VoidCallback? showLoading,
    VoidCallback? hideLoading,
    Function(String message)? onError,
    String? loadingText,
  }) async {
    // Se è definito, mostro l’indicatore di caricamento
    showLoading?.call();

    try {
      // Eseguo l’azione asincrona passata
      await action?.call();
    }
    // Gestisco le eccezioni specifiche del dominio applicativo
    on AuthServiceException catch (e, st) {
      await _logError(e, st);
      onError?.call(e.message);
    } on ApiServiceException catch (e, st) {
      await _logError(e, st);
      onError?.call(e.message);
    } on DioException catch (e, st) {
      await _logError(e, st);
      onError?.call(e.message ?? 'Errore di rete');
    }
    // Qualsiasi altra eccezione generica viene loggata e notificata con messaggio standard
    catch (e, st) {
      await _logError(e, st);
      onError?.call('Si è verificato un errore imprevisto');
    } finally {
      // Nascondo l’indicatore di caricamento se è stato mostrato
      hideLoading?.call();
    }
  }

  /// Metodo privato che si occupa di inviare i dettagli dell’errore a Crashlytics,
  /// includendo informazioni sull’utente, versione app, device e contesto.
  static Future<void> _logError(Object error, StackTrace st) async {
    final bool isProd = bool.fromEnvironment('dart.vm.product');
    final bool isPhysical = await isPhysicalDevice();

    // In fase di sviluppo o su emulatori non invio i dati a Crashlytics,
    // ma li stampo solo in console per debug immediato.
    if (!isProd || !isPhysical) {
      debugPrint(' Error (non tracciato in Crashlytics): $error');
      debugPrint(' Stack:\n$st');
      return;
    }

    final crashlytics = FirebaseCrashlytics.instance;

    try {
      // Aggiungo info utente se presente
      final user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        await crashlytics.setUserIdentifier(user.uid);
        await crashlytics.setCustomKey('user_email', user.email ?? 'unknown');
        await crashlytics.setCustomKey('is_email_verified', user.emailVerified);
      }

      // Aggiungo info versione app
      final packageInfo = await PackageInfo.fromPlatform();
      await crashlytics.setCustomKey('app_version', packageInfo.version);
      await crashlytics.setCustomKey('build_number', packageInfo.buildNumber);
      await crashlytics.setCustomKey('package_name', packageInfo.packageName);

      // Aggiungo info device (Android/iOS)
      final deviceInfo = DeviceInfoPlugin();
      if (defaultTargetPlatform == TargetPlatform.android) {
        final androidInfo = await deviceInfo.androidInfo;
        await crashlytics.setCustomKey('device_model', androidInfo.model);
        await crashlytics.setCustomKey(
            'android_version', androidInfo.version.release);
      } else if (defaultTargetPlatform == TargetPlatform.iOS) {
        final iosInfo = await deviceInfo.iosInfo;
        await crashlytics.setCustomKey('device_model', iosInfo.utsname.machine);
        await crashlytics.setCustomKey('ios_version', iosInfo.systemVersion);
      }

      // Contesto esecuzione
      await crashlytics.setCustomKey('execution_context', 'ExecutionHelper');
      await crashlytics.log('Errore gestito in ExecutionHelper');

      // Registra l’errore
      await crashlytics.recordError(error, st);
    } catch (e) {
      // Se qualcosa va storto durante la registrazione in Crashlytics
      debugPrint('Errore durante la registrazione in Crashlytics: $e');
    }
  }
}
