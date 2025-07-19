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
