import 'package:flutter/material.dart';
import 'package:gearpizza/features/dashboard/models/pizza_dto.dart';
import 'package:gearpizza/features/profile/components/update_pizza_card.dart';

class PizzaListHeader extends StatelessWidget {
  final VoidCallback onAdd;
  const PizzaListHeader({Key? key, required this.onAdd}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Lista pizze',
                style: Theme.of(context).textTheme.headlineSmall),
            Material(
              shape: const CircleBorder(),
              color: Theme.of(context).colorScheme.primary,
              child: IconButton(
                icon: const Icon(Icons.add, color: Colors.white),
                onPressed: onAdd,
                tooltip: 'Aggiungi pizza',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PizzaListSliver extends StatelessWidget {
  final List<PizzaDto> pizzas;
  final ValueChanged<PizzaDto> onEdit;
  final ValueChanged<PizzaDto> onDelete;

  const PizzaListSliver({
    Key? key,
    required this.pizzas,
    required this.onEdit,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, i) {
            final pizza = pizzas[i];
            return UpdatePizzaCard(
              pizza: pizza,
              onEdit: () => onEdit(pizza),
              onDelete: () => showDialog(
                context: context,
                builder: (dialogContext) => AlertDialog(
                  backgroundColor: theme.colorScheme.surface,
                  title: Text(
                    'Conferma eliminazione',
                    style: TextStyle(
                      color: theme.colorScheme.onSurface,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  content: Text(
                    'Eliminare "${pizza.name}"?',
                    style: TextStyle(
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(dialogContext),
                      child: Text(
                        'Annulla',
                        style: TextStyle(color: theme.colorScheme.primary),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        onDelete(pizza);
                        Navigator.pop(dialogContext);
                      },
                      child: Text(
                        'Elimina',
                        style: TextStyle(color: theme.colorScheme.error),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          childCount: pizzas.length,
        ),
      ),
    );
  }
}
