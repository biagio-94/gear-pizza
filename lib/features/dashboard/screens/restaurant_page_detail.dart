import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/features/dashboard/components/restaurants_allergens_filters.dart';
import 'package:go_router/go_router.dart';
import 'package:gearpizza/common/components/pizza_card.dart';
import 'package:gearpizza/common/utils/image_download_helper.dart';
import 'package:gearpizza/common/styles/text_styles.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_bloc.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_event.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_state.dart';

class RestaurantDetailPage extends StatefulWidget {
  final int restaurantId;
  const RestaurantDetailPage({Key? key, required this.restaurantId})
      : super(key: key);

  @override
  State<RestaurantDetailPage> createState() => _RestaurantDetailPageState();
}

class _RestaurantDetailPageState extends State<RestaurantDetailPage> {
  final ScrollController _scrollController = ScrollController();
  bool _isCollapsed = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
    // Dispatch di due fetch: dettagli + pizze
    context.read<DashboardBloc>().add(FetchPizzasEvent(widget.restaurantId));
  }

  void _scrollListener() {
    if (!_scrollController.hasClients) return;
    const collapseThreshold = 150.0 - kToolbarHeight;
    final isCollapsedNow = _scrollController.offset > collapseThreshold;
    if (isCollapsedNow != _isCollapsed) {
      setState(() => _isCollapsed = isCollapsedNow);
    }
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
        extendBodyBehindAppBar: true,
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            // SliverAppBar – restaurant details
            BlocBuilder<DashboardBloc, DashboardState>(
              buildWhen: (prev, curr) => curr is PizzasLoaded,
              builder: (context, state) {
                if (state is PizzasLoaded) {
                  final restaurant = state.restaurant;
                  return SliverAppBar(
                    expandedHeight: 150,
                    pinned: true,
                    elevation: 0,
                    backgroundColor: theme.colorScheme.primary,
                    stretch: true,
                    leading: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: _isCollapsed
                            ? theme.colorScheme.onSurface
                            : theme.colorScheme.surface,
                      ),
                      onPressed: () => context.pop(),
                    ),
                    flexibleSpace: FlexibleSpaceBar(
                      title: _isCollapsed
                          ? Text(restaurant.name)
                          : const SizedBox(),
                      collapseMode: CollapseMode.parallax,
                      background: Stack(
                        fit: StackFit.expand,
                        children: [
                          if (restaurant.coverImageUrl != null)
                            ImageDownloadHelper.loadNetworkImage(
                              restaurant.coverImageUrl!,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            )
                          else
                            Container(color: Colors.grey[300]),
                          Container(color: Colors.black26),
                        ],
                      ),
                    ),
                  );
                } else {
                  return const SliverFillRemaining(
                    child: Center(child: CircularProgressIndicator()),
                  );
                }
              },
            ),

            // Barra filtri orizzontale “pinned” subito dopo l’AppBar
            RestaurantsAllergensFilters(
              label: 'Hai qualche intolleranza ?',
            ),

            // Sliver: “Menu Pizze” header
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'Menu Pizze',
                  style: AppTextStyles.titleLarge(context),
                ),
              ),
            ),

            // SliverGrid – pizzas
            BlocBuilder<DashboardBloc, DashboardState>(
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
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
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
                            onTap: () {
                              // Gestisci tap sulla pizza
                            },
                          );
                        },
                        childCount: pizzas.length,
                      ),
                    ),
                  );
                } else {
                  return const SliverFillRemaining(
                    child: Center(child: CircularProgressIndicator()),
                  );
                }
              },
            ),

            const SliverPadding(padding: EdgeInsets.only(bottom: 16)),
          ],
        ),
      ),
    );
  }
}
