import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/common/utils/image_download_helper.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_bloc.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_event.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_state.dart';
import 'package:gearpizza/features/dashboard/bloc/product_card/product_card_bloc.dart';
import 'package:gearpizza/features/dashboard/bloc/product_card/product_card_event.dart';
import 'package:gearpizza/features/dashboard/bloc/product_card/product_card_state.dart';
import 'package:go_router/go_router.dart';

class PizzaDetailPage extends StatefulWidget {
  final String restaurantId;
  final String pizzaId;

  const PizzaDetailPage({
    Key? key,
    required this.restaurantId,
    required this.pizzaId,
  }) : super(key: key);

  @override
  State<PizzaDetailPage> createState() => _PizzaDetailPageState();
}

class _PizzaDetailPageState extends State<PizzaDetailPage> {
  late final int pizzaId;
  final ScrollController _scrollController = ScrollController();
  bool _isCollapsed = false;

  @override
  void initState() {
    super.initState();
    pizzaId = int.tryParse(widget.pizzaId) ?? 0;
    context.read<DashboardBloc>().add(FetchByPizzaId(pizzaId));

    _scrollController.addListener(() {
      if (_scrollController.hasClients) {
        final isCollapsedNow = _scrollController.offset > 120;
        if (isCollapsedNow != _isCollapsed) {
          setState(() => _isCollapsed = isCollapsedNow);
        }
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
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: theme.colorScheme.background,
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            BlocBuilder<DashboardBloc, DashboardState>(
              builder: (context, dashboardState) {
                if (dashboardState is PizzaDetailPageState) {
                  final p = dashboardState.pizza;

                  return BlocBuilder<ProductCardBloc, ProductCardState>(
                    builder: (context, productState) {
                      int currentQuantity = 0;

                      if (productState is ProductSelectedState) {
                        currentQuantity =
                            productState.productsQuantity[p.id] ?? 0;
                      }

                      final totalPrice = p.price * currentQuantity;

                      return CustomScrollView(
                        controller: _scrollController,
                        slivers: [
                          SliverAppBar(
                            expandedHeight: 240,
                            pinned: true,
                            backgroundColor: theme.colorScheme.primary,
                            elevation: 0,
                            stretch: true,
                            leading: IconButton(
                              icon: Icon(
                                Icons.close,
                                color: _isCollapsed
                                    ? theme.colorScheme.onSurface
                                    : Colors.white,
                              ),
                              onPressed: () => context.pop(),
                            ),
                            flexibleSpace: FlexibleSpaceBar(
                              collapseMode: CollapseMode.parallax,
                              background: p.coverImageUrl != null
                                  ? ImageDownloadHelper.loadNetworkImage(
                                      p.coverImageUrl!,
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                    )
                                  : Container(color: Colors.grey[300]),
                            ),
                          ),
                          SliverPadding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 16),
                            sliver: SliverList(
                              delegate: SliverChildListDelegate(
                                [
                                  Text(
                                    p.name,
                                    style: theme.textTheme.headlineSmall
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 8),
                                  if (p.description != null)
                                    Text(
                                      p.description!,
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment
                                        .center, // CENTRA ORIZZONTALMENTE
                                    crossAxisAlignment: CrossAxisAlignment
                                        .center, // CENTRA VERTICALMENTE
                                    children: [
                                      IconButton(
                                        icon: const Icon(
                                            Icons.remove_circle_outline),
                                        color: currentQuantity > 0
                                            ? theme.colorScheme.secondary
                                            : theme.disabledColor,
                                        onPressed: currentQuantity > 0
                                            ? () {
                                                context
                                                    .read<ProductCardBloc>()
                                                    .add(
                                                      RemoveProductEvent(
                                                        productId: p.id,
                                                        productPrice: p.price,
                                                      ),
                                                    );
                                              }
                                            : null,
                                        splashRadius: 20,
                                        padding: EdgeInsets.zero,
                                        constraints: const BoxConstraints(
                                            minWidth: 32, minHeight: 32),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12),
                                        child: Text(
                                          currentQuantity.toString(),
                                          style: theme.textTheme.titleLarge,
                                        ),
                                      ),
                                      IconButton(
                                        icon: const Icon(
                                            Icons.add_circle_outline),
                                        color: theme.colorScheme.secondary,
                                        onPressed: () {
                                          context.read<ProductCardBloc>().add(
                                                AddProductEvent(
                                                  productId: p.id,
                                                  productPrice: p.price,
                                                ),
                                              );
                                        },
                                        splashRadius: 20,
                                        padding: EdgeInsets.zero,
                                        constraints: const BoxConstraints(
                                            minWidth: 32, minHeight: 32),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 24),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    height: 56,
                                    child: ElevatedButton(
                                      onPressed: currentQuantity > 0
                                          ? () {
                                              context
                                                  .read<ProductCardBloc>()
                                                  .add(
                                                    UpdateProductEvent(
                                                      productId: p.id,
                                                      productPrice: p.price,
                                                      quantity: currentQuantity,
                                                    ),
                                                  );
                                              context.pop();
                                            }
                                          : null,
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            theme.colorScheme.secondary,
                                        foregroundColor:
                                            theme.colorScheme.onSecondary,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              28), // più arrotondato
                                        ),
                                        minimumSize: const Size.fromHeight(56),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Aggiorna il carrello · €${totalPrice.toStringAsFixed(2)}',
                                          style: theme.textTheme.bodyLarge
                                              ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                            color:
                                                theme.colorScheme.onSecondary,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
