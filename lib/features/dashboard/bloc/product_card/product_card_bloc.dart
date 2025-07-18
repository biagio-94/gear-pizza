import 'package:flutter_bloc/flutter_bloc.dart';
import 'product_card_event.dart';
import 'product_card_state.dart';

/// Bloc to manage quantities per product card
class ProductCardBloc extends Bloc<ProductCardEvent, ProductCardState> {
  ProductCardBloc() : super(const NoProductSelectedState()) {
    on<AddProductEvent>(_onAddProduct);
    on<RemoveProductEvent>(_onRemoveProduct);
  }

  Future<void> _onAddProduct(
    AddProductEvent event,
    Emitter<ProductCardState> emit,
  ) async {
    final currentState = state;
    // derive existing quantities
    final quantities = <int, int>{};
    if (currentState is ProductSelectedState) {
      quantities.addAll(currentState.productsQuantity);
    }
    // increment for event.productId
    quantities[event.productId] = (quantities[event.productId] ?? 0) + 1;
    emit(ProductSelectedState(productsQuantity: quantities));
  }

  Future<void> _onRemoveProduct(
    RemoveProductEvent event,
    Emitter<ProductCardState> emit,
  ) async {
    final currentState = state;
    if (currentState is ProductSelectedState) {
      final quantities = Map<int, int>.from(currentState.productsQuantity);
      final currentQty = quantities[event.productId] ?? 0;
      if (currentQty > 1) {
        quantities[event.productId] = currentQty - 1;
      } else {
        quantities.remove(event.productId);
      }
      if (quantities.isEmpty) {
        emit(const NoProductSelectedState());
      } else {
        emit(ProductSelectedState(productsQuantity: quantities));
      }
    }
  }
}
