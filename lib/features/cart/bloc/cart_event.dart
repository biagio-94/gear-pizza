import 'package:gearpizza/features/cart/model/customer_dto.dart';
import 'package:gearpizza/features/cart/model/order_dto.dart';

abstract class CartEvent {}

class LoadCartDetailsEvent extends CartEvent {
  final int restaurantId;
  final Map<int, int> productsQuantity;

  LoadCartDetailsEvent({
    required this.restaurantId,
    required this.productsQuantity,
  });
}

class AddOneItemEvent extends CartEvent {
  final int pizzaId;

  AddOneItemEvent(this.pizzaId);
}

class RemoveOneItemEvent extends CartEvent {
  final int pizzaId;

  RemoveOneItemEvent(this.pizzaId);
}

class ClearCartEvent extends CartEvent {}

class CompleteOrder extends CartEvent {
  final CustomerDto customerInfo;
  final OrderDto orderInfo;

  CompleteOrder({required this.customerInfo, required this.orderInfo});
}
