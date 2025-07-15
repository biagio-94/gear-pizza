class AuthServiceException implements Exception {
  final String message;
  AuthServiceException(this.message);
  @override
  String toString() => message;
}

class LoginException extends AuthServiceException {
  LoginException([super.message = 'Errore durante la fase di login']);
}

class BiometricLoginException extends AuthServiceException {
  BiometricLoginException(
      [super.message =
          'Autenticazione biometrica fallita, controlla di averla attivata sulle impostazioni del tuo dispositivo']);
}

class NotFoundException extends AuthServiceException {
  NotFoundException([super.message = 'Risorsa non trovata.']);
}

class BadRequestException extends AuthServiceException {
  BadRequestException(
      [super.message = 'Credenziali errate. Verifica i dati inviati.']);
}

class GenericAuthException extends AuthServiceException {
  GenericAuthException(
      [super.message =
          "Abbiamo riscontrato un errore improvviso durante il login. Riprova."]);
}
