import 'package:gearpizza/features/cart/model/card_item_dto.dart';

abstract class CartState {}

class CartEmptyState extends CartState {}

class CartLoadedState extends CartState {
  final List<CartItemDto> items;
  final double totalPrice;

  CartLoadedState(this.items, this.totalPrice);
}
