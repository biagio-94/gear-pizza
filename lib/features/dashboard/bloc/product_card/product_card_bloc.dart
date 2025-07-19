import 'package:flutter_bloc/flutter_bloc.dart';
import 'product_card_event.dart';
import 'product_card_state.dart';

/// Bloc to manage quantities per product card and total price
class ProductCardBloc extends Bloc<ProductCardEvent, ProductCardState> {
  ProductCardBloc() : super(const EmptyProductCardState()) {
    on<AddProductEvent>(_onAddProduct);
    on<RemoveProductEvent>(_onRemoveProduct);
    on<UpdateProductEvent>(_onUpdateProduct);
    on<ClearProductCardEvent>(_onClearProductCard);
  }

  Future<void> _onAddProduct(
    AddProductEvent event,
    Emitter<ProductCardState> emit,
  ) async {
    final currentState = state;
    final quantities = <int, int>{};
    double subtotal = 0.0;

    if (currentState is ProductSelectedState) {
      quantities.addAll(currentState.productsQuantity);
      subtotal = currentState.totalPrice;
    }

    // increment quantity
    quantities[event.productId] = (quantities[event.productId] ?? 0) + 1;
    // update subtotal
    subtotal += event.productPrice;
    emit(ProductSelectedState(
        productsQuantity: quantities, totalPrice: subtotal));
  }

  Future<void> _onRemoveProduct(
    RemoveProductEvent event,
    Emitter<ProductCardState> emit,
  ) async {
    final currentState = state;
    if (currentState is ProductSelectedState) {
      final quantities = Map<int, int>.from(currentState.productsQuantity);
      double subtotal = currentState.totalPrice;

      final currentQty = quantities[event.productId] ?? 0;
      if (currentQty > 1) {
        quantities[event.productId] = currentQty - 1;
        subtotal -= event.productPrice;
      } else if (currentQty == 1) {
        quantities.remove(event.productId);
        subtotal -= event.productPrice;
      }

      if (quantities.isEmpty) {
        emit(const EmptyProductCardState());
      } else {
        emit(ProductSelectedState(
            productsQuantity: quantities, totalPrice: subtotal));
      }
    }
  }

  Future<void> _onUpdateProduct(
    UpdateProductEvent event,
    Emitter<ProductCardState> emit,
  ) async {
    final currentState = state;

    if (currentState is ProductSelectedState) {
      final quantities = Map<int, int>.from(currentState.productsQuantity);
      double subtotal = currentState.totalPrice;

      final oldQuantity = quantities[event.productId] ?? 0;
      final newQuantity = event.quantity;

      if (newQuantity > 0) {
        quantities[event.productId] = newQuantity;
      } else {
        quantities.remove(event.productId);
      }

      // Calcola la differenza di quantità
      final quantityDiff = newQuantity - oldQuantity;
      // Aggiorna il subtotal aggiungendo (o sottraendo) la differenza * prezzo
      subtotal += quantityDiff * event.productPrice;

      if (quantities.isEmpty) {
        emit(const EmptyProductCardState());
      } else {
        emit(ProductSelectedState(
            productsQuantity: quantities, totalPrice: subtotal));
      }
    }
  }

  void _onClearProductCard(
      ClearProductCardEvent event, Emitter<ProductCardState> emit) {
    emit(EmptyProductCardState());
  }
}
