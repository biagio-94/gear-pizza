import 'package:flutter/foundation.dart';

@immutable
abstract class ProductCardState {
  const ProductCardState();
}

class EmptyProductCardState extends ProductCardState {
  const EmptyProductCardState();
}

class ProductSelectedState extends ProductCardState {
  /// Map of productId to quantity
  /// <idPrdotto,quantità>
  final Map<int, int> productsQuantity;

  /// Total subtotal across all products
  final double totalPrice;

  const ProductSelectedState({
    required this.productsQuantity,
    required this.totalPrice,
  });
}
