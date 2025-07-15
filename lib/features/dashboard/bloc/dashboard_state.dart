import 'package:flutter/foundation.dart';
import 'package:gearpizza/common/model/funzionalita.dart';
import 'package:gearpizza/common/model/preventivo_elenco_item.dart';

@immutable
abstract class DashboardState {
  const DashboardState();
}

class DashboardInitializedState extends DashboardState {
  final List<PreventivoElencoItem> preventivi;
  final String username;
  const DashboardInitializedState({
    required this.preventivi,
    required this.username,
  });
}

class ChooseFunzionalitaState extends DashboardInitializedState {
  final List<Funzionalita> funzionalita;
  const ChooseFunzionalitaState(
      {required this.funzionalita,
      required super.preventivi,
      required super.username});
}
