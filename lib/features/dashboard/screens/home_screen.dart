import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/common/components/restaurants_card.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_bloc.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_event.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_state.dart';
import 'package:gearpizza/features/dashboard/components/home_filters_bar.dart';
import 'package:gearpizza/features/dashboard/models/restaurants_dto.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    final bloc = context.read<DashboardBloc>();
    bloc.add(FetchAllergenEvent());
    bloc.add(fetchAllFilters());
    bloc.add(FetchRestaurantsEvent());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeFiltersBar(),
          // 2) Ristoranti con ExpansionTile
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Text(
              'I nostri ristoranti',
              textAlign: TextAlign.left,
              style: theme.textTheme.headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
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
