import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/features/cart/model/card_item_dto.dart';
import 'package:get_it/get_it.dart';
import 'package:gearpizza/common/bloc/loading_bloc.dart';
import 'package:gearpizza/common/bloc/exception_bloc.dart';
import 'package:gearpizza/common/utils/bloc_exception_helper.dart';

import 'package:gearpizza/features/cart/bloc/cart_event.dart';
import 'package:gearpizza/features/cart/bloc/cart_state.dart';
import 'package:gearpizza/features/dashboard/services/dashboard_service.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final DashboardService _dashboardService;
  final loadingBloc = GetIt.instance<LoadingBloc>();
  final exceptionBloc = GetIt.instance<ExceptionBloc>();

  CartBloc(this._dashboardService) : super(CartEmptyState()) {
    on<LoadCartDetailsEvent>(_onLoadCartDetails);
  }

  Future<void> _onLoadCartDetails(
      LoadCartDetailsEvent event, Emitter<CartState> emit) async {
    await ExecutionHelper.run(
      showLoading: () => loadingBloc.showLoading('Caricamento carrello...'),
      hideLoading: () => loadingBloc.hideLoading(),
      onError: (message) => exceptionBloc.throwExceptionState(message),
      action: () async {
        // Carico tutte le pizze in parallelo usando gli id
        final List<CartItemDto> cartItems = await Future.wait(
          event.productsQuantity.entries.map((entry) async {
            final pizzaId = entry.key;
            final quantity = entry.value;

            // Recupero la pizza specifica dal servizio
            final pizza =
                await _dashboardService.fetchPizzaById(pizzaId: pizzaId);

            return CartItemDto(
              pizza: pizza,
              quantity: quantity,
            );
          }),
        );

        // Calcolo totale sommando prezzo * quantità
        final totalPrice = cartItems.fold<double>(
          0,
          (sum, item) => sum + item.subtotal,
        );

        emit(CartLoadedState(cartItems, totalPrice));
      },
    );
  }
}
