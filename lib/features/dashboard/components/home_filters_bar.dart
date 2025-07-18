import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_bloc.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_state.dart';
import 'package:gearpizza/features/dashboard/models/filters_dto.dart';

class HomeFiltersBar extends StatelessWidget {
  const HomeFiltersBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: BlocBuilder<DashboardBloc, DashboardState>(
        buildWhen: (_, state) => state is FiltersLoaded,
        builder: (context, state) {
          if (state is FiltersLoaded) {
            return _FiltersPills(filters: state.filters);
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class _FiltersPills extends StatelessWidget {
  final List<FiltersDto> filters;

  const _FiltersPills({
    Key? key,
    required this.filters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final pillBgColor = colorScheme.onSurface.withOpacity(0.05);
    final textColor = colorScheme.onSurface;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: filters.map((f) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 6),
            child: Material(
              color: pillBgColor,
              elevation: 4,
              shadowColor: Colors.black12.withOpacity(0.1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              // Evito che l'ombra venga ritagliata
              clipBehavior: Clip.none,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: Text(
                  f.name,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: textColor,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
