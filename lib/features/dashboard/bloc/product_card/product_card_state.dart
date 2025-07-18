import 'package:flutter/foundation.dart';

@immutable
abstract class ProductCardState {
  const ProductCardState();
}

class NoProductSelectedState extends ProductCardState {
  const NoProductSelectedState();
}

class ProductSelectedState extends ProductCardState {
  /// Map of productId to quantity
  final Map<int, int> productsQuantity;

  /// Total subtotal across all products
  final double totalPrice;

  const ProductSelectedState({
    required this.productsQuantity,
    required this.totalPrice,
  });
}
