import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/common/components/restaurants_card.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_bloc.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_event.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_state.dart';
import 'package:gearpizza/features/dashboard/models/alergen_dto.dart';
import 'package:gearpizza/features/dashboard/models/restaurants_dto.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  Timer? _autoScrollTimer;

  @override
  void initState() {
    super.initState();
    final bloc = context.read<DashboardBloc>();
    bloc.add(FetchAllergenEvent());
    bloc.add(FetchRestaurantsEvent());

    // Auto-scroll periodico per la lista orizzontale di allergeni
    _autoScrollTimer = Timer.periodic(const Duration(seconds: 3), (_) {
      if (_scrollController.hasClients) {
        final max = _scrollController.position.maxScrollExtent;
        final cur = _scrollController.offset;
        final next = (cur + 120) >= max ? 0.0 : cur + 120;
        _scrollController.animateTo(next,
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeInOut);
      }
    });
  }

  @override
  void dispose() {
    _autoScrollTimer?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Glovo Home', style: TextStyle(fontSize: 24)),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 90,
            child: BlocBuilder<DashboardBloc, DashboardState>(
              buildWhen: (_, s) => s is AllergensLoaded,
              builder: (context, state) {
                if (state is AllergensLoaded) {
                  final List<AllergenDto> allergens = state.allergens;
                  return ListView.builder(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    itemCount: allergens.length,
                    itemBuilder: (_, i) {
                      final a = allergens[i];
                      return Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 16),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.orange.shade100,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(a.name,
                              style: const TextStyle(fontSize: 16)),
                        ),
                      );
                    },
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),

          // 2) Ristoranti con ExpansionTile
          Expanded(
            child: BlocBuilder<DashboardBloc, DashboardState>(
              buildWhen: (_, s) => s is RestaurantsLoaded,
              builder: (context, state) {
                if (state is RestaurantsLoaded) {
                  final List<RestaurantDto> restaurants = state.restaurants;
                  return ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemCount: restaurants.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 12),
                    itemBuilder: (ctx, i) {
                      return RestaurantCard(
                        restaurant: restaurants[i],
                        onTapPizza: (pizza) {
                          // opzionale: azione quando selezioni una pizza
                        },
                      );
                    },
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
