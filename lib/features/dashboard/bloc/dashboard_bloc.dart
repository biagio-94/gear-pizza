// dashboard_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:gearpizza/common/bloc/loading_bloc.dart';
import 'package:gearpizza/common/bloc/exception_bloc.dart';
import 'package:gearpizza/common/services/api_service_exception.dart';

import 'dashboard_event.dart';
import 'dashboard_state.dart';
import '../services/dashboard_service.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final DashboardService dashboardService;
  final loadingBloc = GetIt.instance<LoadingBloc>();
  final exceptionBloc = GetIt.instance<ExceptionBloc>();

  DashboardBloc(this.dashboardService) : super(DashboardInitial()) {
    on<FetchRestaurantsEvent>((event, emit) async {
      loadingBloc.showLoading('Caricamento ristoranti...');
      try {
        final restaurants = await dashboardService.fetchAllRestaurants();
        emit(RestaurantsLoaded(restaurants));
      } on ApiServiceException catch (e) {
        exceptionBloc.throwExceptionState(e.message);
      } catch (e) {
        exceptionBloc
            .throwExceptionState('Errore durante il fetch dei ristoranti');
      } finally {
        loadingBloc.hideLoading();
      }
    });

    on<FetchAllergenEvent>((event, emit) async {
      loadingBloc.showLoading('Caricamento allergene...');
      try {
        final allergen = await dashboardService.fetchAllAllergens();
        emit(AllergensLoaded(allergen));
      } on ApiServiceException catch (e) {
        exceptionBloc.throwExceptionState(e.message);
      } catch (e) {
        exceptionBloc
            .throwExceptionState('Errore durante il fetch dell\'allergene');
      } finally {
        loadingBloc.hideLoading();
      }
    });

    on<fetchAllFilters>((event, emit) async {
      loadingBloc.showLoading('Caricamento filters...');
      try {
        final filters = await dashboardService.fetchAllFilters();
        emit(FiltersLoaded(filters));
      } on ApiServiceException catch (e) {
        exceptionBloc.throwExceptionState(e.message);
      } catch (e) {
        exceptionBloc
            .throwExceptionState('Errore durante il fetch dell\'allergene');
      } finally {
        loadingBloc.hideLoading();
      }
    });

    on<FetchPizzasEvent>((event, emit) async {
      loadingBloc.showLoading('Caricamento pizze...');
      try {
        final pizzas = await dashboardService.fetchPizzasByRestaurant(
            restaurantId: event.restaurantId);
        emit(PizzasLoaded(pizzas));
      } on ApiServiceException catch (e) {
        exceptionBloc.throwExceptionState(e.message);
      } catch (e) {
        exceptionBloc
            .throwExceptionState('Errore durante il fetch delle pizze');
      } finally {
        loadingBloc.hideLoading();
      }
    });
  }
}
