import 'package:gearpizza/features/cart/model/card_item_dto.dart';
import 'package:gearpizza/features/dashboard/models/restaurants_dto.dart';

abstract class CartState {}

class CartEmptyState extends CartState {}

class CartLoadedState extends CartState {
  final List<CartItemDto> items;
  final RestaurantDto restaurant;
  final double totalPrice;

  CartLoadedState({
    required this.items,
    required this.totalPrice,
    required this.restaurant,
  });

  CartLoadedState copyWith({
    List<CartItemDto>? items,
    RestaurantDto? restaurant,
    double? totalPrice,
  }) {
    return CartLoadedState(
      items: items ?? this.items,
      restaurant: restaurant ?? this.restaurant,
      totalPrice: totalPrice ?? this.totalPrice,
    );
  }
}
