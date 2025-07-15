import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
// ignore: depend_on_referenced_packages
import 'package:local_auth_android/local_auth_android.dart';
// ignore: depend_on_referenced_packages
import 'package:local_auth_darwin/local_auth_darwin.dart';
import 'package:local_auth/error_codes.dart' as auth_error;

import 'package:gearpizza/features/auth/services/auth_service_exception.dart';

class BiometricAuthService {
  final LocalAuthentication _auth;

  BiometricAuthService(this._auth);

  // Check if the device supports biometric authentication
  Future<bool> isDeviceSupported() async {
    try {
      return await _auth.isDeviceSupported();
    } on PlatformException catch (e) {
      debugPrint("Error checking if device is supported: $e");
      return false;
    }
  }

  // Check if the device supports biometric authentication
  Future<List<BiometricType>> getBiometricsTypes() async {
    try {
      return await _auth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      debugPrint("Error checking if device is supported: $e");
      return [];
    }
  }

  Future<bool> checkBiometricSetup() async {
    bool canCheck = await _auth.canCheckBiometrics;
    List<BiometricType> availableBiometrics =
        await _auth.getAvailableBiometrics();
    return canCheck && availableBiometrics.isNotEmpty;
  }

// Authenticate using biometrics
  Future<bool> authenticateWithBiometrics() async {
    try {
      return await _auth.authenticate(
        localizedReason: 'Autenticazione biometrica in corso',
        authMessages: const [
          IOSAuthMessages(
            cancelButton: 'Annulla',
            goToSettingsButton: 'Vai alle impostazioni',
            goToSettingsDescription:
                'Abilita l’autenticazione biometrica per continuare.',
          ),
          AndroidAuthMessages(
            signInTitle: 'Autenticazione biometrica richiesta',
            cancelButton: 'Annulla',
            goToSettingsButton: 'Vai alle impostazioni',
            goToSettingsDescription:
                'Abilita l’autenticazione biometrica per continuare.',
            biometricHint: 'Posiziona il dito sul sensore',
          ),
        ],
        options: const AuthenticationOptions(
          useErrorDialogs: true,
          biometricOnly: true,
        ),
      );
    } on PlatformException catch (e) {
      switch (e.code) {
        case auth_error.lockedOut:
          throw BiometricLoginException(
              "Il dispositivo è temporaneamente bloccato a causa di troppi tentativi di autenticazione falliti. Riprova più tardi.");
        case auth_error.permanentlyLockedOut:
          throw BiometricLoginException(
              "Il dispositivo è permanentemente bloccato per l'autenticazione biometrica. Reimposta il sistema biometrico nelle impostazioni.");
        case auth_error.notAvailable:
          throw BiometricLoginException(
              "Autenticazione biometrica non disponibile sul dispositivo.");
        case auth_error.notEnrolled:
          throw BiometricLoginException(
              "Nessuna credenziale biometrica configurata. Configura l’autenticazione biometrica nelle impostazioni.");
        default:
          throw BiometricLoginException(
              "Errore sconosciuto durante l'autenticazione biometrica: ${e.message}");
      }
    } catch (e) {
      // Gestione generica di eventuali altri errori
      throw BiometricLoginException(
          "Si è verificato un errore imprevisto durante l'autenticazione: ${e.toString()}");
    }
  }
}
