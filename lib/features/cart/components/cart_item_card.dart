import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/common/services/firestore_service.dart';
import 'package:gearpizza/common/utils/image_download_helper.dart';
import 'package:gearpizza/features/cart/bloc/cart_bloc.dart';
import 'package:gearpizza/features/cart/bloc/cart_event.dart';
import 'package:gearpizza/features/cart/model/card_item_dto.dart';
import 'package:get_it/get_it.dart';

class CartItemCard extends StatefulWidget {
  final CartItemDto item;
  const CartItemCard({required this.item, Key? key}) : super(key: key);

  @override
  _CartItemCardState createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
  String? _cachedImageUrl;
  late Future<String?> _imageFuture;

  @override
  void initState() {
    super.initState();
    // Carica l'immagine solo se non è già stata caricata
    if (_cachedImageUrl == null) {
      _imageFuture = _fetchImageUrl(widget.item.pizza.id);
    } else {
      _imageFuture = Future.value(_cachedImageUrl);
    }
  }

  // Funzione che carica l'immagine dalla Firebase Storage
  Future<String?> _fetchImageUrl(int pizzaId) async {
    final imageUrl = await GetIt.instance<FirebaseStorageService>()
        .fetchPizzaImageUrlFromFirebase(pizzaId.toString());

    // Salva l'immagine nella cache
    if (imageUrl != null && imageUrl.isNotEmpty) {
      setState(() {
        _cachedImageUrl = imageUrl;
      });
    }
    return imageUrl;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final pizza = widget.item.pizza;
    final subtotal = pizza.price * widget.item.quantity;

    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Usando FutureBuilder per caricare l'immagine asincrona
          FutureBuilder<String?>(
            future: _imageFuture,
            builder: (context, snapshot) {
              String imageUrl =
                  pizza.coverImageUrl ?? ""; // Immagine di fallback
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                  imageUrl = snapshot.data!; // Usa l'immagine se trovata
                }
              }

              return ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: ImageDownloadHelper.loadCachedNetworkImage(
                  imageUrl,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        pizza.name,
                        style: theme.textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: theme.colorScheme.secondary.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: widget.item.quantity > 1
                                    ? const Icon(Icons.remove_circle_outline)
                                    : const Icon(Icons.delete_outline),
                                onPressed: () {
                                  context.read<CartBloc>().add(
                                      RemoveOneItemEvent(widget.item.pizza.id));
                                },
                                splashRadius: 20,
                              ),
                              Text(
                                '${widget.item.quantity}',
                                style: theme.textTheme.bodyMedium,
                              ),
                              IconButton(
                                icon: const Icon(Icons.add_circle_outline),
                                onPressed: () {
                                  context.read<CartBloc>().add(
                                      AddOneItemEvent(widget.item.pizza.id));
                                },
                                splashRadius: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  pizza.description ?? '',
                  style: theme.textTheme.bodySmall,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Subtotal',
                          style: theme.textTheme.bodySmall,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          '€${subtotal.toStringAsFixed(2)}',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.colorScheme.onSurface,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
