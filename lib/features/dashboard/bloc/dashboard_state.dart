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

class AllergensSelectionChanged extends DashboardState {
  final List<AllergenDto> selected;
  const AllergensSelectionChanged(this.selected);
}

class PizzasLoaded extends DashboardState {
  final RestaurantDto restaurant;
  final List<PizzaDto> pizzas;

  /// Lista degli allergeni correntemente applicati al filtro
  final List<int> selectedAllergenIds;
  const PizzasLoaded({
    required this.pizzas,
    required this.restaurant,
    this.selectedAllergenIds = const [],
  });
}
