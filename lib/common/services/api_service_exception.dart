class ApiServiceException implements Exception {
  final String message;
  ApiServiceException(this.message);

  @override
  String toString() => message;
}

class CancelRequestException extends ApiServiceException {
  CancelRequestException([super.message = 'La richiesta è stata annullata.']);
}

class NetworkException extends ApiServiceException {
  NetworkException([super.message = 'Problemi di connessione alla rete.']);
}

class TimeoutException extends ApiServiceException {
  TimeoutException(
      [super.message = 'La connessione ha impiegato troppo tempo.']);
}

class UnauthorizedException extends ApiServiceException {
  UnauthorizedException([
    super.message =
        'Sessione scaduta o credenziali non valide. Effettua nuovamente il login.',
  ]);
}

class ServerException extends ApiServiceException {
  ServerException(
      [super.message = 'C\'è un problema con il server. Riprova più tardi.']);
}

class GenericException extends ApiServiceException {
  GenericException([super.message = 'Si è verificato un errore imprevisto.']);
}
