// lib/common/components/restaurant_detail_app_bar.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/common/utils/image_download_helper.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_bloc.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_state.dart';
import 'package:gearpizza/features/dashboard/models/restaurants_dto.dart';

/// SliverAppBar che prende il RestaurantDto direttamente dallo state PizzasLoaded
/// e gestisce già il loading spinner e l’errore.
class RestaurantDetailAppBar extends StatelessWidget {
  final bool isCollapsed;
  final VoidCallback onPop;
  const RestaurantDetailAppBar({
    Key? key,
    required this.isCollapsed,
    required this.onPop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      buildWhen: (prev, curr) => curr is PizzasLoaded,
      builder: (context, state) {
        if (state is PizzasLoaded) {
          final restaurant = state.restaurant;
          return _buildAppBar(context, restaurant);
        }
        // Loading
        return const SliverFillRemaining(
          child: Center(child: CircularProgressIndicator()),
        );
      },
    );
  }

  Widget _buildAppBar(BuildContext context, RestaurantDto restaurant) {
    final theme = Theme.of(context);
    return SliverAppBar(
      expandedHeight: 150,
      pinned: true,
      elevation: 0,
      backgroundColor: theme.colorScheme.primary,
      stretch: true,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: isCollapsed
              ? theme.colorScheme.onSurface
              : theme.colorScheme.surface,
        ),
        onPressed: onPop,
      ),
      flexibleSpace: FlexibleSpaceBar(
        title: isCollapsed ? Text(restaurant.name) : const SizedBox(),
        collapseMode: CollapseMode.parallax,
        background: Stack(
          fit: StackFit.expand,
          children: [
            if (restaurant.coverImageUrl != null)
              ImageDownloadHelper.loadCachedNetworkImage(
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
  }
}
