import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/common/styles/colors_schemes.dart';
import 'package:gearpizza/features/cart/bloc/cart_bloc.dart';
import 'package:gearpizza/features/cart/bloc/cart_event.dart';
import 'package:gearpizza/features/dashboard/bloc/product_card/product_card_bloc.dart';
import 'package:gearpizza/features/dashboard/bloc/product_card/product_card_state.dart';
import 'package:go_router/go_router.dart';
import 'package:gearpizza/common/styles/text_styles.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_bloc.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_event.dart';
import 'package:gearpizza/features/dashboard/components/restaurant_detail_app_bar.dart';
import 'package:gearpizza/features/dashboard/components/restaurants_allergens_filters.dart';
import 'package:gearpizza/features/dashboard/components/restaurant_products_list.dart';

/// Pagina di dettaglio del ristorante:
/// - Mostro l'AppBar con immagine e nome
/// - Includo i filtri degli allergeni (pinned)
/// - Visualizzo il titolo "Menu Pizze"
/// - Renderizzo la griglia di pizze con loading e empty state
class RestaurantDetailPage extends StatefulWidget {
  final int restaurantId;

  /// Ricevo l'id del ristorante per avviare il fetch dei dati
  const RestaurantDetailPage({Key? key, required this.restaurantId})
      : super(key: key);

  @override
  State<RestaurantDetailPage> createState() => _RestaurantDetailPageState();
}

class _RestaurantDetailPageState extends State<RestaurantDetailPage> {
  // Altezza espansa dell'AppBar
  static const double _appBarExpandedHeight = 150;
  // Soglia per determinare quando l'AppBar collassa
  static const double _collapseThreshold =
      _appBarExpandedHeight - kToolbarHeight;

  final ScrollController _scrollController = ScrollController();
  bool _isCollapsed = false;

  @override
  void initState() {
    super.initState();
    // Imposto listener su scroll per aggiornare lo stato collapsato
    _scrollController.addListener(_onScroll);
    // Dispatch degli eventi iniziali (fetch pizze e allergeni)
    final bloc = context.read<DashboardBloc>();
    bloc.add(FetchPizzasEvent(widget.restaurantId));
    bloc.add(FetchAllergenEvent());
  }

  @override
  void dispose() {
    // Rimuovo listener e distruggo il controller
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  /// Controllo offset per aggiornare [_isCollapsed]
  void _onScroll() {
    if (!_scrollController.hasClients) return;
    final collapsed = _scrollController.offset > _collapseThreshold;
    if (collapsed != _isCollapsed) {
      setState(() => _isCollapsed = collapsed);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            // 1) AppBar con dettaglio ristorante
            RestaurantDetailAppBar(
              isCollapsed: _isCollapsed,
              onPop: () => context.pop(),
            ),

            // 2) Filtri allergeni (pinned subito dopo l'AppBar)
            RestaurantsAllergensFilters(
              label: 'Hai qualche intolleranza?',
              onSelectionChanged: (allergen) {
                // Posso reagire al cambio filtro qui o nel Bloc
              },
            ),

            // 3) Header titolo "Menu Pizze"
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'Le nostre pizze',
                  style: AppTextStyles.titleMedium(context),
                ),
              ),
            ),

            // 4) Lista pizze: griglia con loading e empty state
            RestaurantProductsList(
              onPizzaTap: (pizza) {
                context.pushNamed(
                  'pizzaDetail',
                  pathParameters: {
                    'restaurantId': pizza.restaurantId.toString(),
                    'pizzaId': pizza.id.toString(),
                  },
                );
              },
            ),

            // 5) Padding di fondo per evitare overlap con bottom bar
            const SliverPadding(padding: EdgeInsets.only(bottom: 16)),
          ],
        ),
        floatingActionButton: BlocBuilder<ProductCardBloc, ProductCardState>(
          builder: (context, state) {
            if (state is! ProductSelectedState) return const SizedBox.shrink();

            final total = state.totalPrice;
            final productsQuantity = state.productsQuantity;

            final colors = Theme.of(context).colorScheme;

            return SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 56,
              child: FloatingActionButton.extended(
                onPressed: () {
                  // Lancia l'evento nel CartBloc
                  context.read<CartBloc>().add(
                        LoadCartDetailsEvent(
                          restaurantid: widget.restaurantId,
                          productsQuantity: productsQuantity,
                        ),
                      );

                  // Poi naviga alla pagina carrello
                  context.go("/cart");
                },
                backgroundColor: colors.secondary,
                foregroundColor: colors.onSecondary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                label: Center(
                  child: Text(
                    'Al carrello · €${total.toStringAsFixed(2)}',
                    style: AppTextStyles.bodyLarge(context).copyWith(
                      color: AppColors.darkOnSurface,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
