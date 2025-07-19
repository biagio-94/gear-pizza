abstract class CartEvent {}

class LoadCartDetailsEvent extends CartEvent {
  final int restaurantid;
  final Map<int, int> productsQuantity;

  LoadCartDetailsEvent(
      {required this.productsQuantity, required this.restaurantid});
}
