import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/features/cart/bloc/cart_event.dart';
import 'package:gearpizza/features/cart/bloc/cart_state.dart';
import 'package:gearpizza/features/cart/model/card_item_dto.dart';
import 'package:gearpizza/features/dashboard/services/dashboard_service.dart';
import 'package:get_it/get_it.dart';
import 'package:gearpizza/common/bloc/loading_bloc.dart';
import 'package:gearpizza/common/bloc/exception_bloc.dart';
import 'package:gearpizza/common/utils/bloc_exception_helper.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final DashboardService _dashboardService;
  final loadingBloc = GetIt.instance<LoadingBloc>();
  final exceptionBloc = GetIt.instance<ExceptionBloc>();

  CartBloc(this._dashboardService) : super(CartEmptyState()) {
    on<LoadCartDetailsEvent>(_onLoadCartDetails);
    on<AddOneItemEvent>(_onAddOne);
    on<RemoveOneItemEvent>(_onRemoveOne);
    on<ClearCartEvent>(_onClearCart);
  }

  Future<void> _onLoadCartDetails(
      LoadCartDetailsEvent event, Emitter<CartState> emit) async {
    await ExecutionHelper.run(
      showLoading: () => loadingBloc.showLoading('Caricamento carrello...'),
      hideLoading: () => loadingBloc.hideLoading(),
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        final restaurantData = await _dashboardService.fetchRestaurantById(
            restaurantId: event.restaurantId);

        final cartItems = await Future.wait(
          event.productsQuantity.entries.map((e) async {
            final pizza =
                await _dashboardService.fetchPizzaById(pizzaId: e.key);
            return CartItemDto(pizza: pizza, quantity: e.value);
          }),
        );

        final total =
            cartItems.fold<double>(0, (sum, item) => sum + item.subtotal);

        emit(CartLoadedState(
          items: cartItems,
          totalPrice: total,
          restaurant: restaurantData,
        ));
      },
    );
  }

  void _onAddOne(AddOneItemEvent event, Emitter<CartState> emit) {
    final state = this.state;
    if (state is CartLoadedState) {
      final items = List<CartItemDto>.from(state.items);
      final idx = items.indexWhere((i) => i.pizza.id == event.pizzaId);
      if (idx != -1) {
        items[idx] = items[idx].copyWith(quantity: items[idx].quantity + 1);
      }
      final newTotal =
          items.fold<double>(0, (sum, item) => sum + item.subtotal);
      emit(CartLoadedState(
        items: items,
        totalPrice: newTotal,
        restaurant: state.restaurant,
      ));
    }
  }

  void _onRemoveOne(RemoveOneItemEvent event, Emitter<CartState> emit) {
    final state = this.state;
    if (state is CartLoadedState) {
      var items = List<CartItemDto>.from(state.items);
      final idx = items.indexWhere((i) => i.pizza.id == event.pizzaId);
      if (idx != -1) {
        final current = items[idx];
        if (current.quantity > 1) {
          items[idx] = current.copyWith(quantity: current.quantity - 1);
        } else {
          items.removeAt(idx);
        }
      }
      final newTotal =
          items.fold<double>(0, (sum, item) => sum + item.subtotal);

      if (items.isEmpty) {
        emit(CartEmptyState());
      } else {
        emit(CartLoadedState(
          items: items,
          totalPrice: newTotal,
          restaurant: state.restaurant,
        ));
      }
    }
  }

  void _onClearCart(ClearCartEvent event, Emitter<CartState> emit) {
    emit(CartEmptyState());
  }
}
