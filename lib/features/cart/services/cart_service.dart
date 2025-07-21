import 'package:dio/dio.dart';
import 'package:gearpizza/common/services/api_service_exception.dart';
import 'package:gearpizza/features/cart/repositories/cart_repository.dart';
import 'package:gearpizza/features/cart/model/customer_dto.dart';
import 'package:gearpizza/features/cart/model/order_dto.dart';
import 'package:gearpizza/features/cart/services/cart_service_exception.dart';

class CartService {
  final CartRepository _cartRepository;

  CartService(this._cartRepository);

  /// Verifica se esiste un customer con [email].
  /// Se non esiste, lo crea e lo restituisce.
  Future<CustomerDto> getOrCreateCustomer({
    required String email,
    required String name,
    required int restaurantId,
  }) async {
    try {
      final existing = await _cartRepository.checkCustomerExists(email: email);
      if (existing != null) {
        return existing;
      }
      final newCustomer = CustomerDto(
        restaurantId: restaurantId,
        name: name,
        emailAddress: email,
      );
      return await _cartRepository.createCustomer(customer: newCustomer);
    } on CartServiceException {
      rethrow;
    } on ApiServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw GenericException(e.toString());
    }
  }

  /// Crea un nuovo ordine per [order].
  Future<OrderDto> placeOrder({required OrderDto order}) async {
    try {
      return await _cartRepository.createOrder(order: order);
    } on CartServiceException {
      rethrow;
    } on ApiServiceException {
      rethrow;
    } on DioException {
      rethrow;
    } catch (e) {
      throw GenericException(e.toString());
    }
  }
}
