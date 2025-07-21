import 'package:flutter/material.dart';
import 'package:gearpizza/features/dashboard/models/pizza_dto.dart';
import 'package:gearpizza/features/profile/components/update_pizza_card.dart';

class PizzaListHeader extends StatelessWidget {
  final VoidCallback onAdd;
  const PizzaListHeader({Key? key, required this.onAdd}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Lista pizze',
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                backgroundColor: theme.colorScheme.secondary,
                elevation: 2,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
              onPressed: onAdd,
              child: Row(
                children: [
                  const Icon(Icons.add, size: 20),
                  const SizedBox(width: 8),
                  Text(
                    'Aggiungi',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSecondary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
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
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, i) {
            final pizza = pizzas[i];
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: UpdatePizzaCard(
                pizza: pizza,
                onEdit: () => onEdit(pizza),
                onDelete: () => _showDeleteDialog(context, pizza),
              ),
            );
          },
          childCount: pizzas.length,
        ),
      ),
    );
  }

  void _showDeleteDialog(BuildContext context, PizzaDto pizza) {
    final theme = Theme.of(context);
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        backgroundColor: theme.colorScheme.surface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        title: Text(
          'Conferma eliminazione',
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.onSurface,
          ),
        ),
        content: Text(
          'Vuoi eliminare "${pizza.name}"?',
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onSurface,
          ),
        ),
        actionsPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text(
              'Annulla',
              style: theme.textTheme.labelLarge?.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: theme.colorScheme.error,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              onDelete(pizza);
              Navigator.pop(dialogContext);
            },
            child: Text(
              'Elimina',
              style: theme.textTheme.labelLarge?.copyWith(
                color: theme.colorScheme.onError,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
