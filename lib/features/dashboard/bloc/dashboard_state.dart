// dashboard_state.dart
import 'package:flutter/foundation.dart';
import 'package:gearpizza/features/dashboard/models/alergen_dto.dart';
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

class PizzasLoaded extends DashboardState {
  final List<PizzaDto> pizzas;
  const PizzasLoaded(this.pizzas);
}
