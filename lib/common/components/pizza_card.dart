import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/common/services/firestore_service.dart';
import 'package:gearpizza/common/styles/text_styles.dart';
import 'package:gearpizza/common/utils/image_download_helper.dart';
import 'package:gearpizza/features/dashboard/models/pizza_dto.dart';
import 'package:gearpizza/features/dashboard/bloc/product_card/product_card_bloc.dart';
import 'package:gearpizza/features/dashboard/bloc/product_card/product_card_event.dart';
import 'package:gearpizza/features/dashboard/bloc/product_card/product_card_state.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class PizzaCard extends StatefulWidget {
  final PizzaDto pizza;
  final VoidCallback? onTap;

  const PizzaCard({Key? key, required this.pizza, this.onTap})
      : super(key: key);

  @override
  _PizzaCardState createState() => _PizzaCardState();
}

class _PizzaCardState extends State<PizzaCard> {
  late final Future<String> _imageUrlFuture;

  @override
  void initState() {
    super.initState();
    _imageUrlFuture = _fetchHelpImage(
      widget.pizza.id.toString(),
      widget.pizza.coverImageUrl ?? '',
    );
  }

  Future<String> _fetchHelpImage(String pizzaId, String fallbackUrl) async {
    try {
      final firebase = GetIt.instance<FirebaseStorageService>();
      final url = await firebase.fetchPizzaImageUrlFromFirebase(pizzaId);
      return url ?? fallbackUrl;
    } catch (_) {
      return fallbackUrl;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<ProductCardBloc, ProductCardState>(
      builder: (context, state) {
        int quantity = 0;
        if (state is ProductSelectedState) {
          quantity = state.productsQuantity[widget.pizza.id] ?? 0;
        }
        final subtotal = widget.pizza.price * quantity;

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Divider(height: 1, thickness: 0.5),
            GestureDetector(
              onTap: widget.onTap,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.grey[200],
                        child: FutureBuilder<String>(
                          future: _imageUrlFuture,
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const Center(
                                  child: CircularProgressIndicator());
                            }
                            final imageUrl = snapshot.data;
                            if (imageUrl != null && imageUrl.isNotEmpty) {
                              return ImageDownloadHelper.loadCachedNetworkImage(
                                imageUrl,
                                fit: BoxFit.cover,
                                width: 100,
                                height: 100,
                              );
                            }
                            return const Icon(
                              Icons.store,
                              size: 48,
                              color: Colors.grey,
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  widget.pizza.name,
                                  style: theme.textTheme.bodyLarge
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                '€${widget.pizza.price.toStringAsFixed(2)}',
                                style: AppTextStyles.bodyLarge(context),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          if (widget.pizza.description?.isNotEmpty ?? false)
                            Text(
                              widget.pizza.description!,
                              style: AppTextStyles.bodySmall(context),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          const SizedBox(height: 6),
                          if (widget.pizza.allergens.isNotEmpty)
                            Text(
                              'Allergeni: ${widget.pizza.allergens.map((a) => a.name).join(', ')}',
                              style: AppTextStyles.caption(context),
                            ),
                          const SizedBox(height: 8),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _QuantityButton(
                                      icon: Icons.remove,
                                      onPressed: () {
                                        context.read<ProductCardBloc>().add(
                                              RemoveProductEvent(
                                                productId: widget.pizza.id,
                                                productPrice:
                                                    widget.pizza.price,
                                              ),
                                            );
                                      },
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      quantity.toString(),
                                      style: theme.textTheme.bodyLarge,
                                    ),
                                    const SizedBox(width: 8),
                                    _QuantityButton(
                                      icon: Icons.add,
                                      onPressed: () {
                                        if (quantity > 0) {
                                          context.read<ProductCardBloc>().add(
                                                AddProductEvent(
                                                  productId: widget.pizza.id,
                                                  productPrice:
                                                      widget.pizza.price,
                                                ),
                                              );
                                        } else {
                                          context.pushNamed(
                                            'pizzaDetail',
                                            pathParameters: {
                                              'restaurantId': widget
                                                  .pizza.restaurantId
                                                  .toString(),
                                            },
                                            extra: widget.pizza,
                                          );
                                        }
                                      },
                                    ),
                                  ],
                                ),
                                if (quantity > 0) ...[
                                  const SizedBox(height: 10),
                                  Text(
                                    'Subtotale: €${subtotal.toStringAsFixed(2)}',
                                    style: theme.textTheme.bodyMedium
                                        ?.copyWith(fontStyle: FontStyle.italic),
                                  ),
                                ],
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(height: 1, thickness: 0.5),
          ],
        );
      },
    );
  }
}

class _QuantityButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const _QuantityButton({Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return SizedBox(
      width: 28,
      height: 28,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.secondary.withOpacity(0.1),
          padding: EdgeInsets.zero,
          shape: const CircleBorder(),
          elevation: 0,
        ),
        child: Icon(icon, size: 20),
      ),
    );
  }
}
