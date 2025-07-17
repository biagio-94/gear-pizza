import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gearpizza/common/services/api_service_exception.dart';
import 'package:gearpizza/features/auth/services/auth_service_exception.dart';

ApiServiceException mapDioExceptionToCustomException(DioException e) {
  ApiServiceException exception;
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
    case DioExceptionType.sendTimeout:
    case DioExceptionType.receiveTimeout:
      exception = TimeoutException();
      break;
    case DioExceptionType.cancel:
      exception = CancelRequestException();
      break;
    case DioExceptionType.badResponse:
      final statusCode = e.response?.statusCode;
      if (statusCode == 401 || statusCode == 403) {
        exception = UnauthorizedException();
      } else if (statusCode != null && statusCode >= 500) {
        exception = ServerException();
      } else {
        exception =
            ApiServiceException('Errore: $statusCode - ${e.response?.data}');
      }
      break;
    case DioExceptionType.unknown:
      exception = NetworkException();
      break;
    default:
      exception = GenericException();
  }
  return exception;
}

/// Mappa le eccezioni di FirebaseAuth in eccezioni di tipo AuthServiceException
AuthServiceException mapFirebaseExceptionToCustomException(
  FirebaseAuthException e,
) {
  switch (e.code) {
    case 'invalid-email':
      return BadRequestException();
    case 'user-disabled':
      return GenericAuthException();
    case 'user-not-found':
      return NotFoundException();
    case 'wrong-password':
      return BadRequestException();
    case 'too-many-requests':
      return LoginException(
        'Troppe richieste. Riprova più tardi.',
      );
    case 'operation-not-allowed':
      return LoginException(
        'Metodo di accesso non abilitato.',
      );
    case 'network-request-failed':
      return GenericAuthException();
    default:
      return GenericAuthException();
  }
}
