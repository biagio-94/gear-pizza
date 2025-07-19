import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/features/cart/bloc/cart_bloc.dart';
import 'package:gearpizza/features/cart/bloc/cart_event.dart';
import 'package:gearpizza/features/cart/bloc/cart_state.dart';
import 'package:gearpizza/features/cart/components/cart_item_card.dart';
import 'package:gearpizza/features/cart/components/checkout_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrello'),
        centerTitle: true,
        backgroundColor: theme.colorScheme.surface,
        elevation: 0,
      ),
      floatingActionButton: CheckoutButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          if (state is CartEmptyState) {
            return const Center(
              child: Text(
                'Il carrello è vuoto',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            );
          } else if (state is CartLoadedState) {
            final items = state.items;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Il tuo carrello',
                            style: theme.textTheme.headlineSmall
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 4),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      '${state.items.length} ${state.items.length == 1 ? 'prodotto' : 'prodotti'} da',
                                  style: theme.textTheme.bodySmall
                                      ?.copyWith(color: Colors.grey[700]),
                                ),
                                TextSpan(
                                  text: state.restaurant.name,
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: theme.colorScheme.onSurface.withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        padding: const EdgeInsets.all(4),
                        child: IconButton(
                          icon: Icon(
                            Icons.delete_outline,
                            color: theme.colorScheme.onSurface,
                          ),
                          onPressed: () async {
                            final confirm = await showDialog<bool>(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text('Svuota Carrello?'),
                                content: const Text(
                                  'Sei sicuro di voler rimuovere tutti gli articoli dal carrello?',
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(false),
                                    child: const Text('Mantieni'),
                                    style: TextButton.styleFrom(
                                      foregroundColor:
                                          theme.colorScheme.onSurface,
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(true),
                                    child: const Text('Svuota'),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: theme.colorScheme.error,
                                      foregroundColor:
                                          theme.colorScheme.onError,
                                    ),
                                  ),
                                ],
                              ),
                            );
                            if (confirm == true) {
                              context.read<CartBloc>().add(ClearCartEvent());
                            }
                          },
                          splashRadius: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemCount: items.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 16),
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return CartItemCard(item: item);
                    },
                  ),
                ),
              ],
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
