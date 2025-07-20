// user_exceptions.dart

class UserServiceException implements Exception {
  final String message;
  UserServiceException(this.message);

  @override
  String toString() => 'UserServiceException: $message';
}

class MissingAuthDataException extends UserServiceException {
  static const String defaultMessage =
      'Autenticazione mancante o non valida. Effettua nuovamente il login.';

  MissingAuthDataException() : super(defaultMessage);
}

class FetchUserProfileException extends UserServiceException {
  static const String defaultMessage =
      'Errore durante il recupero del profilo utente. Riprova.';

  FetchUserProfileException([String message = defaultMessage]) : super(message);
}

class PatchUserException extends UserServiceException {
  static const String defaultMessage =
      'Errore durante l\'aggiornamento del profilo utente.';

  PatchUserException([String message = defaultMessage]) : super(message);
}

class UnexpectedUserException extends UserServiceException {
  UnexpectedUserException([String message = 'Errore imprevisto'])
      : super(message);
}
