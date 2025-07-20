import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/features/cart/bloc/cart_event.dart';
import 'package:gearpizza/features/cart/bloc/cart_state.dart';
import 'package:gearpizza/features/cart/model/card_item_dto.dart';
import 'package:gearpizza/features/cart/model/customer_dto.dart';
import 'package:gearpizza/features/cart/model/order_dto.dart';
import 'package:gearpizza/features/cart/services/cart_service.dart';
import 'package:gearpizza/features/dashboard/services/dashboard_service.dart';
import 'package:get_it/get_it.dart';
import 'package:gearpizza/common/bloc/loading_bloc.dart';
import 'package:gearpizza/common/bloc/exception_bloc.dart';
import 'package:gearpizza/common/utils/bloc_exception_helper.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final DashboardService _dashboardService;
  final CartService _cartService;
  final loadingBloc = GetIt.instance<LoadingBloc>();
  final exceptionBloc = GetIt.instance<ExceptionBloc>();

  CartBloc(this._dashboardService, this._cartService)
      : super(CartStateInitial()) {
    on<LoadCartDetailsEvent>(_onLoadCartDetails);
    on<AddOneItemEvent>(_onAddOne);
    on<RemoveOneItemEvent>(_onRemoveOne);
    on<ClearCartEvent>(_onClearCart);
    on<CompleteOrder>(_onCompleteOrder);
  }

  Future<void> _onLoadCartDetails(
    LoadCartDetailsEvent event,
    Emitter<CartState> emit,
  ) async {
    await ExecutionHelper.run(
      showLoading: () => loadingBloc.showLoading('Caricamento carrello...'),
      hideLoading: () => loadingBloc.hideLoading(),
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        // Fetch ristorante e items
        final restaurantData = await _dashboardService.fetchRestaurantById(
          restaurantId: event.restaurantId,
        );
        final cartItems = await Future.wait(
          event.productsQuantity.entries.map((e) async {
            final pizza =
                await _dashboardService.fetchPizzaById(pizzaId: e.key);
            return CartItemDto(pizza: pizza, quantity: e.value);
          }),
        );

        // Provo a recuperare il customer se esiste
        final CustomerDto? customerInfo =
            await _dashboardService.fetchCustomerInfoIfExists();

        final total =
            cartItems.fold<double>(0, (sum, item) => sum + item.subtotal);

        // Costruisco lo stato con o senza fullName/emailAddress
        emit(
          CartLoadedState(
            items: cartItems,
            totalPrice: total,
            restaurant: restaurantData,
            fullName: customerInfo?.name,
            emailAddress: customerInfo?.emailAddress,
          ),
        );
      },
    );
  }

  Future<void> _onCompleteOrder(
    CompleteOrder event,
    Emitter<CartState> emit,
  ) async {
    await ExecutionHelper.run(
      showLoading: () => loadingBloc.showLoading('Completamento ordine...'),
      hideLoading: () => loadingBloc.hideLoading(),
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        // Recupero o creo il customer basandomi sull'email
        final CustomerDto customer = await _cartService.getOrCreateCustomer(
          email: event.customerInfo.emailAddress,
          name: event.customerInfo.name,
          restaurantId: event.customerInfo.restaurantId,
        );

        // Costruisco l'OrderDto usando l'id restituito dal customer appena ottenuto
        final OrderDto order = OrderDto(
          status: event.orderInfo.status, // Imposto lo stato dell'ordine
          restaurantId:
              event.orderInfo.restaurantId, // Associazione al ristorante
          customerId: customer.id!, // Uso l'id del customer
          address: event.orderInfo.address, // Indirizzo di consegna
          helpingImage:
              event.orderInfo.helpingImage, // Eventuale immagine di supporto
          pizzaIds: event.orderInfo.pizzaIds, // Lista di ID pizze selezionate
        );

        // Invio la richiesta per creare l'ordine sul server
        final OrderDto created = await _cartService.placeOrder(order: order);

        // Emetto lo stato di successo con l'ordine appena creato
        emit(CartSuccessState(order: created));
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
