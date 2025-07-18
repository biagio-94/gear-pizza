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
  const ProductSelectedState({required this.productsQuantity});
}
