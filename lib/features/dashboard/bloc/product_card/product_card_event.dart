import 'package:flutter/foundation.dart';

@immutable
abstract class ProductCardEvent {
  const ProductCardEvent();
}

class AddProductEvent extends ProductCardEvent {
  final int productId;
  final double productPrice;
  const AddProductEvent({required this.productId, required this.productPrice});
}

class RemoveProductEvent extends ProductCardEvent {
  final int productId;
  final double productPrice;
  const RemoveProductEvent(
      {required this.productId, required this.productPrice});
}
