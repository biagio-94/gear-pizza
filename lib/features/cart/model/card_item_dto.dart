import 'dart:convert';

import 'package:gearpizza/features/dashboard/models/pizza_dto.dart';

class CartItemDto {
  final PizzaDto pizza;
  final int quantity;

  CartItemDto({
    required this.pizza,
    required this.quantity,
  });

  double get subtotal => pizza.price * quantity;

  Map<String, dynamic> toMap() {
    return {
      'pizza': pizza.toMap(),
      'quantity': quantity,
    };
  }

  factory CartItemDto.fromMap(Map<String, dynamic> map) {
    return CartItemDto(
      pizza: PizzaDto.fromMap(map['pizza']),
      quantity: map['quantity']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CartItemDto.fromJson(String source) =>
      CartItemDto.fromMap(json.decode(source));
}
