import 'package:dio/dio.dart';
import 'package:gearpizza/common/services/api_service_exception.dart';

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
