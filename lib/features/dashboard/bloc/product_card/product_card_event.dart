import 'package:flutter/foundation.dart';

@immutable
abstract class ProductCardEvent {
  const ProductCardEvent();
}

class AddProductEvent extends ProductCardEvent {
  final int productId;
  const AddProductEvent({required this.productId});
}

class RemoveProductEvent extends ProductCardEvent {
  final int productId;
  const RemoveProductEvent({required this.productId});
}
