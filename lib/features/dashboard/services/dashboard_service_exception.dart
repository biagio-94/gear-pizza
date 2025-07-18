/// File: lib/features/dashboard/exceptions/dashboard_exceptions.dart
///
/// Eccezioni per il modulo Dashboard:
/// - DashboardServiceException
/// - FetchRestaurantsException
/// - FetchAllergensException
/// - FetchPizzasException

/// Base exception for dashboard-related errors
class DashboardServiceException implements Exception {
  final String message;
  DashboardServiceException(this.message);
  @override
  String toString() => 'DashboardServiceException: $message';
}

/// Thrown when fetching restaurants fails
class FetchRestaurantsException extends DashboardServiceException {
  /// Messaggio di errore di default per il fetch dei ristoranti
  static const String defaultMessage =
      'Errore durante il caricamento dei ristoranti. Riprova più tardi.';

  FetchRestaurantsException([String message = defaultMessage]) : super(message);
}

/// Thrown when fetching allergens fails
class FetchAllergensException extends DashboardServiceException {
  /// Messaggio di errore di default per il fetch degli allergeni
  static const String defaultMessage =
      'Errore durante il caricamento degli allergeni. Riprova più tardi.';

  FetchAllergensException([String message = defaultMessage]) : super(message);
}

/// Thrown when fetching pizzas fails
class FetchPizzasException extends DashboardServiceException {
  /// Messaggio di errore di default per il fetch delle pizze
  static const String defaultMessage =
      'Errore durante il caricamento delle pizze. Riprova più tardi.';

  FetchPizzasException([String message = defaultMessage]) : super(message);
}
