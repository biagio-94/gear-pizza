import 'package:flutter/foundation.dart';

@immutable
abstract class DashboardState {
  const DashboardState();
}

class DashboardInitializedState extends DashboardState {
  final List<String> preventivi;
  final String username;
  const DashboardInitializedState({
    required this.preventivi,
    required this.username,
  });
}

class ChooseFunzionalitaState extends DashboardInitializedState {
  final List<String> funzionalita;
  const ChooseFunzionalitaState(
      {required this.funzionalita,
      required super.preventivi,
      required super.username});
}
