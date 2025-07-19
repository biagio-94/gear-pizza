class CartServiceException implements Exception {
  final String message;
  CartServiceException(this.message);

  @override
  String toString() => message;
}

/// Errore generico durante il recupero del customer
class FetchCustomerException extends CartServiceException {
  FetchCustomerException(
      [super.message = 'Errore durante il recupero del cliente']);
}

/// Errore durante la creazione di un nuovo customer
class CreateCustomerException extends CartServiceException {
  CreateCustomerException(
      [super.message = 'Errore durante la creazione del cliente']);
}

/// Errore durante la creazione dell'ordine
class CreateOrderException extends CartServiceException {
  CreateOrderException(
      [super.message = 'Errore durante la creazione dell\'ordine']);
}
