// lib/common/components/restaurant_products_list.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/common/components/pizza_card.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_bloc.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_state.dart';
import 'package:gearpizza/features/dashboard/models/pizza_dto.dart';

/// Un componente che espone la SliverGrid di pizze, gestendo loading e empty state.
class RestaurantProductsList extends StatelessWidget {
  /// Callback opzionale quando si tocca una pizza
  final void Function(PizzaDto pizza)? onPizzaTap;

  const RestaurantProductsList({Key? key, this.onPizzaTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      buildWhen: (prev, curr) => curr is PizzasLoaded,
      builder: (context, state) {
        if (state is PizzasLoaded) {
          final pizzas = state.pizzas;
          if (pizzas.isEmpty) {
            return const SliverFillRemaining(
              child: Center(child: Text("Nessuna pizza disponibile")),
            );
          }
          return SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 0.7,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final pizza = pizzas[index];
                  return PizzaCard(
                    pizza: pizza,
                    onTap: onPizzaTap != null ? () => onPizzaTap!(pizza) : null,
                  );
                },
                childCount: pizzas.length,
              ),
            ),
          );
        }
        // stato di caricamento iniziale
        return const SliverFillRemaining(
          child: Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
