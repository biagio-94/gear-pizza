import 'package:flutter/foundation.dart';
import 'package:gearpizza/features/dashboard/models/alergen_dto.dart';
import 'package:gearpizza/features/dashboard/models/filters_dto.dart';
import 'package:gearpizza/features/dashboard/models/pizza_dto.dart';
import 'package:gearpizza/features/dashboard/models/restaurants_dto.dart';

@immutable
abstract class DashboardState {
  const DashboardState();
}

class DashboardInitial extends DashboardState {}

class PizzasLoading extends DashboardState {}

class PizzaDetailPageState extends DashboardState {
  final PizzaDto pizza;
  PizzaDetailPageState({required this.pizza});
}

class RestaurantsLoaded extends DashboardState {
  final List<RestaurantDto> restaurants;
  const RestaurantsLoaded(this.restaurants);
}

class AllergensLoaded extends DashboardState {
  final List<AllergenDto> allergens;
  const AllergensLoaded(this.allergens);
}

class FiltersLoaded extends DashboardState {
  final List<FiltersDto> filters;
  const FiltersLoaded(this.filters);
}

class PizzasLoaded extends DashboardState {
  final RestaurantDto restaurant;
  final List<PizzaDto> pizzas;

  const PizzasLoaded({
    required this.pizzas,
    required this.restaurant,
  });
}
