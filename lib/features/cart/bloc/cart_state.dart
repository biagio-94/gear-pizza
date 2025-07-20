import 'package:gearpizza/features/cart/model/card_item_dto.dart';
import 'package:gearpizza/features/cart/model/order_dto.dart';
import 'package:gearpizza/features/dashboard/models/restaurants_dto.dart';

abstract class CartState {}

class CartStateInitial extends CartState {}

class CartEmptyState extends CartState {}

class CartLoadedState extends CartState {
  final List<CartItemDto> items;
  final RestaurantDto restaurant;
  final double totalPrice;
  final String? fullName;
  final String? emailAddress;

  CartLoadedState(
      {required this.items,
      required this.totalPrice,
      required this.restaurant,
      this.emailAddress,
      this.fullName});

  CartLoadedState copyWith(
      {List<CartItemDto>? items,
      RestaurantDto? restaurant,
      double? totalPrice,
      String? emailAddress,
      String? fullName}) {
    return CartLoadedState(
      items: items ?? this.items,
      restaurant: restaurant ?? this.restaurant,
      totalPrice: totalPrice ?? this.totalPrice,
      emailAddress: emailAddress ?? this.emailAddress,
      fullName: fullName ?? this.fullName,
    );
  }
}

class CartSuccessState extends CartState {
  final OrderDto order;

  CartSuccessState({required this.order});
}
