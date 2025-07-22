import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/common/utils/image_download_helper.dart';
import 'package:gearpizza/features/dashboard/bloc/product_card/product_card_bloc.dart';
import 'package:gearpizza/features/dashboard/bloc/product_card/product_card_event.dart';
import 'package:gearpizza/features/dashboard/bloc/product_card/product_card_state.dart';
import 'package:gearpizza/features/dashboard/models/pizza_dto.dart';
import 'package:go_router/go_router.dart';

class PizzaDetailPage extends StatefulWidget {
  final String restaurantId;
  final PizzaDto pizza;

  const PizzaDetailPage({
    Key? key,
    required this.restaurantId,
    required this.pizza,
  }) : super(key: key);

  @override
  State<PizzaDetailPage> createState() => _PizzaDetailPageState();
}

class _PizzaDetailPageState extends State<PizzaDetailPage> {
  final ScrollController _scrollController = ScrollController();
  bool _isCollapsed = false;
  late final String _imageUrlToShow;

  @override
  void initState() {
    super.initState();
    _imageUrlToShow = widget.pizza.coverImageUrl ?? '';
    _scrollController.addListener(() {
      final collapsed = _scrollController.offset > 120;
      if (collapsed != _isCollapsed) {
        setState(() => _isCollapsed = collapsed);
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: theme.colorScheme.background,
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            // 1) Questo SliverAppBar **non** è dentro BlocBuilder:
            //    non verrà mai ricostruito al variare del quantity.
            SliverAppBar(
              expandedHeight: 240,
              pinned: true,
              backgroundColor: theme.colorScheme.primary,
              elevation: 0,
              stretch: true,
              leading: IconButton(
                icon: Icon(
                  Icons.close,
                  color:
                      _isCollapsed ? theme.colorScheme.onSurface : Colors.white,
                ),
                onPressed: () => context.pop(),
              ),
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.parallax,
                background: _imageUrlToShow.isNotEmpty
                    ? ImageDownloadHelper.loadCachedNetworkImage(
                        _imageUrlToShow,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )
                    : Container(color: Colors.grey[300]),
              ),
            ),

            // 2) Qui metto tutto il contenuto **statistico**: nome, descrizione, allergeni
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  Text(
                    widget.pizza.name,
                    style: theme.textTheme.headlineSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  if (widget.pizza.description != null)
                    Text(widget.pizza.description!,
                        style: theme.textTheme.bodyMedium),
                  const SizedBox(height: 8),
                  if (widget.pizza.allergens.isNotEmpty)
                    Text(
                      'Allergeni: ${widget.pizza.allergens.map((a) => a.name).join(', ')}',
                      style: theme.textTheme.labelMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  const SizedBox(height: 16),
                ]),
              ),
            ),

            // 3) BlocBuilder solo per la parte interattiva (quantità + pulsante)
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              sliver: SliverToBoxAdapter(
                child: BlocBuilder<ProductCardBloc, ProductCardState>(
                  builder: (context, state) {
                    final qty = state is ProductSelectedState
                        ? state.productsQuantity[widget.pizza.id] ?? 0
                        : 0;
                    final total = widget.pizza.price * qty;

                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.remove_circle_outline),
                              color: qty > 0
                                  ? theme.colorScheme.secondary
                                  : theme.disabledColor,
                              onPressed: qty > 0
                                  ? () => context.read<ProductCardBloc>().add(
                                        RemoveProductEvent(
                                          productId: widget.pizza.id,
                                          productPrice: widget.pizza.price,
                                        ),
                                      )
                                  : null,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: Text(qty.toString(),
                                  style: theme.textTheme.titleLarge),
                            ),
                            IconButton(
                              icon: const Icon(Icons.add_circle_outline),
                              color: theme.colorScheme.secondary,
                              onPressed: () =>
                                  context.read<ProductCardBloc>().add(
                                        AddProductEvent(
                                          productId: widget.pizza.id,
                                          productPrice: widget.pizza.price,
                                        ),
                                      ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 56,
                          child: ElevatedButton(
                            onPressed: qty > 0
                                ? () {
                                    context.read<ProductCardBloc>().add(
                                          UpdateProductEvent(
                                            productId: widget.pizza.id,
                                            productPrice: widget.pizza.price,
                                            quantity: qty,
                                          ),
                                        );
                                    context.pop();
                                  }
                                : null,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: theme.colorScheme.secondary,
                              foregroundColor: theme.colorScheme.onSecondary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28),
                              ),
                              minimumSize: const Size.fromHeight(56),
                            ),
                            child: Text(
                              'Aggiorna il carrello · €${total.toStringAsFixed(2)}',
                              style: theme.textTheme.bodyLarge
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
