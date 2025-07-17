import 'package:cloud_functions/cloud_functions.dart'
    show FirebaseFunctionsException, FirebaseFunctions;
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gearpizza/common/services/api_service_exception.dart';
import 'package:gearpizza/common/services/biometric_auth_service.dart';
import 'package:gearpizza/features/auth/models/auth_gear_pizza_user.dart';
import 'package:gearpizza/features/auth/repositories/auth_repository.dart';
import 'package:gearpizza/features/auth/services/auth_service_exception.dart';

/// A higher‑level service to handle authentication flows, including biometrics.
class AuthService {
  final AuthRepository _repository;
  final FirebaseFunctions _functions = FirebaseFunctions.instanceFor(
    region: 'us-central1',
  );

  AuthService({
    required AuthRepository repository,
    required BiometricAuthService biometricService,
  }) : _repository = repository;

  /// All’avvio dell’app: delego tutta la logica al repository
  Future<AuthGeaPizzaUser?> onStart() async {
    try {
      return await _repository.onStart();
    } on AuthServiceException {
      rethrow;
    } on ApiServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw GenericAuthException(e.toString());
    }
  }

  Future<bool> emailAlreadyExists({required String email}) async {
    try {
      return await _repository.emailAlreadyExists(email: email);
    } on AuthServiceException {
      rethrow;
    } on ApiServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw GenericAuthException(e.toString());
    }
  }

  /// Logs in a user with email & password.
  Future<AuthGeaPizzaUser> login({
    required String email,
    required String password,
  }) async {
    try {
      return await _repository.signInWithEmail(
        email: email,
        password: password,
      );
    } on AuthServiceException {
      rethrow;
    } on ApiServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw GenericAuthException(e.toString());
    }
  }

  /// Logs in using Google OAuth.
  Future<AuthGeaPizzaUser> loginWithGoogle() async {
    try {
      return await _repository.signInWithGoogle();
    } on AuthServiceException {
      rethrow;
    } on ApiServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw GenericAuthException(e.toString());
    }
  }

  /// Logs as a guest user.
  Future<AuthGeaPizzaUser> signAsGuest() async {
    try {
      return await _repository.signAsGuest();
    } on AuthServiceException {
      rethrow;
    } on ApiServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw GenericAuthException(e.toString());
    }
  }

  /// Logs in using Facebook OAuth.
  Future<AuthGeaPizzaUser> loginWithFacebook() async {
    try {
      return await _repository.signInWithFacebook();
    } on AuthServiceException {
      rethrow;
    } on ApiServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw GenericAuthException(e.toString());
    }
  }

  /// Logs in using Facebook OAuth.
  Future<AuthGeaPizzaUser> signWithOTP() async {
    try {
      return await _repository.signWithOTP();
    } on AuthServiceException {
      rethrow;
    } on ApiServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw GenericAuthException(e.toString());
    }
  }

  Future<AuthGeaPizzaUser> getAuthuser() async {
    try {
      return await _repository.getAuthUser();
    } on AuthServiceException {
      rethrow;
    } on ApiServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw GenericAuthException(e.toString());
    }
  }

  /// Logs out the current user and clears stored credentials.
  Future<void> logout() async {
    try {
      await _repository.signOut();
    } on AuthServiceException {
      rethrow;
    } on ApiServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw GenericAuthException(e.toString());
    }
  }

  Future<void> sendOtp({required String phone}) async {
    debugPrint('>> sendOtp: phone = $phone');
    // 1) Normalize E.164: rimuovi spazi, trattini, parentesi e assicurati del '+'
    var normalized = phone.trim().replaceAll(RegExp(r'[\s\-\(\)]'), '');

    debugPrint('>> sendOtp: normalized phone = $phone');

    if (!normalized.startsWith('+')) {
      normalized = '+$normalized';
    }

    // Debug log (rimuovi in produzione)
    debugPrint('>> sendOtp: normalized phone = $normalized');

    try {
      final callable = _functions.httpsCallable('sendOtp');
      final payload = {'phone': phone};

      final response = await callable.call(payload);

      final data = response.data as Map<String, dynamic>;
      if (data['success'] == true) {
        return; // OTP inviato
      } else {
        throw Exception('Invio OTP fallito');
      }
    } on FirebaseFunctionsException catch (e) {
      // Se Twilio risponde un errore custom, lo trovi in e.message
      debugPrint(
          '⚠️ sendOtp FirebaseFunctionsException: ${e.code}, ${e.message}');
      throw Exception(e.message?.contains('Numero di telefono mancante') == true
          ? 'Numero di telefono non valido.'
          : 'Errore lato server, riprova più tardi.');
    } on DioException catch (e) {
      // Gestione errori di rete
      debugPrint('⚠️ sendOtp DioException: ${e.message}');
      throw Exception('Connessione fallita, controlla la tua rete.');
    } catch (e) {
      debugPrint('⚠️ sendOtp GenericException: $e');
      throw GenericAuthException('Qualcosa è andato storto: ${e.toString()}');
    }
  }

  /// Verifica l’OTP ricevuto e riceve in cambio un custom token Firebase
  Future<bool> verifyOtp({
    required String phone,
    required String otp,
  }) async {
    try {
      final callable = _functions.httpsCallable('verifyOtp');
      final response = await callable.call({
        'phone': phone,
        'otp': otp,
      });

      final data = response.data as Map<String, dynamic>;
      if (data['success'] == true) {
        // Se ti serve il token:
        final token = data['token'] as String?;
        if (token != null) {
          // login Firebase
          await FirebaseAuth.instance.signInWithCustomToken(token);
        }
        return true;
      } else {
        // OTP non valido o errore di sistema
        return false;
      }
    } on FirebaseFunctionsException catch (_) {
      throw Exception(
          'Qualcosa è andato storto durante la verifica OTP, riprova più tardi.');
    } on AuthServiceException {
      rethrow;
    } on ApiServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw GenericAuthException(e.toString());
    }
  }

  Future<bool> isRoleChosen(String uid) async {
    // Qui potremmo controllare se l'utente ha scelto un ruolo specifico
    // ad esempio verificando un campo nel database o in secure storage.
    // Per ora ritorno true come placeholder.
    // In un'app reale, questa logica dovrebbe essere implementata in modo
    // da verificare se l'utente ha completato la scelta del ruolo.
    return true;
  }

  /// Returns the current authenticated user, or null.
  User? get currentUser => _repository.currentUser;

  /// Exposes auth state change stream.
  Stream<User?> get authStateChanges => _repository.authStateChanges;
}
