import 'package:flutter/foundation.dart';

@immutable
abstract class DashboardEvent {
  const DashboardEvent();
}

// Evento per fetch di tutti i ristoranti
class FetchRestaurantsEvent extends DashboardEvent {}

// Evento per fetch di tutti i ristoranti
class FetchAllFilters extends DashboardEvent {}

// Evento per fetch di un allergene singolo per id
class FetchAllergenEvent extends DashboardEvent {}

// Evento per fetch delle pizze di un ristorante
class FetchPizzasEvent extends DashboardEvent {
  final int restaurantId;
  const FetchPizzasEvent(this.restaurantId);
}

/// Evento per filtro per allergeni selezionati
class FetchByAllergensEvent extends DashboardEvent {
  final int restaurantId;
  final List<int> selectedAllergenIds;
  const FetchByAllergensEvent({
    required this.selectedAllergenIds,
    required this.restaurantId,
  });
}

class FetchByPizzaId extends DashboardEvent {
  final int pizzaId;
  const FetchByPizzaId(this.pizzaId);
}
