// dashboard_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:gearpizza/common/bloc/loading_bloc.dart';
import 'package:gearpizza/common/bloc/exception_bloc.dart';
import 'package:gearpizza/common/utils/bloc_exception_helper.dart';
import 'dashboard_event.dart';
import 'dashboard_state.dart';
import '../services/dashboard_service.dart';

/// Gestisce gli eventi e gli stati relativi a dashboard,
/// inclusi il fetch di ristoranti, allergeni, filtri e pizze.
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final DashboardService _dashboardService;
  final loadingBloc = GetIt.instance<LoadingBloc>();
  final exceptionBloc = GetIt.instance<ExceptionBloc>();

  DashboardBloc(this._dashboardService) : super(DashboardInitial()) {
    // Fetch tutti i ristoranti
    on<FetchRestaurantsEvent>(_onFetchRestaurants);
    // Fetch di tutti gli allergeni
    on<FetchAllergenEvent>(_onFetchAllergens);
    // Fetch di tutti i filtri
    on<FetchAllFilters>(_onFetchFilters);
    // Fetch delle pizze per un ristorante specifico
    on<FetchPizzasEvent>(_onFetchPizzasByRestaurant);
    // Fetch delle pizze per allergeni esclusi
    on<FetchByAllergensEvent>(_onFetchByAllergens);
  }

  Future<void> _onFetchRestaurants(
    FetchRestaurantsEvent event,
    Emitter<DashboardState> emit,
  ) async {
    await ExecutionHelper.run(
      showLoading: () => loadingBloc.showLoading('Caricamento ristoranti...'),
      hideLoading: () => loadingBloc.hideLoading(),
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        final restaurants = await _dashboardService.fetchAllRestaurants();
        emit(RestaurantsLoaded(restaurants));
      },
    );
  }

  Future<void> _onFetchAllergens(
    FetchAllergenEvent event,
    Emitter<DashboardState> emit,
  ) async {
    await ExecutionHelper.run(
      showLoading: () => loadingBloc.showLoading('Caricamento allergeni...'),
      hideLoading: () => loadingBloc.hideLoading(),
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        final allergens = await _dashboardService.fetchAllAllergens();
        emit(AllergensLoaded(allergens));
      },
    );
  }

  Future<void> _onFetchFilters(
    FetchAllFilters event,
    Emitter<DashboardState> emit,
  ) async {
    await ExecutionHelper.run(
      showLoading: () => loadingBloc.showLoading('Caricamento filtri...'),
      hideLoading: () => loadingBloc.hideLoading(),
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        final filters = await _dashboardService.fetchAllFilters();
        emit(FiltersLoaded(filters));
      },
    );
  }

  Future<void> _onFetchPizzasByRestaurant(
    FetchPizzasEvent event,
    Emitter<DashboardState> emit,
  ) async {
    await ExecutionHelper.run(
      showLoading: () => loadingBloc.showLoading('Caricamento pizze...'),
      hideLoading: () => loadingBloc.hideLoading(),
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        final pizzas = await _dashboardService.fetchPizzaByrestaurantId(
          restaurantId: event.restaurantId,
        );
        final restaurant = await _dashboardService.fetchRestaurantById(
          restaurantId: event.restaurantId,
        );
        emit(PizzasLoaded(pizzas: pizzas, restaurant: restaurant));
      },
    );
  }

  Future<void> _onFetchByAllergens(
    FetchByAllergensEvent event,
    Emitter<DashboardState> emit,
  ) async {
    await ExecutionHelper.run(
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        final currentState = state;

        // Recupera il ristorante corrente da uno stato precedente
        if (currentState is PizzasLoaded) {
          final restaurant = currentState.restaurant;

          // Chiamata al repository con ristorante e allergeni da escludere
          final pizzas = await _dashboardService.fetchPizzasExcludingAllergens(
            restaurantId: restaurant.id,
            excludedAllergenIds: event.selectedAllergenIds,
          );

          // Emetti lo stato aggiornato
          emit(PizzasLoaded(
            restaurant: restaurant,
            pizzas: pizzas,
          ));
        }
      },
    );
  }
}
