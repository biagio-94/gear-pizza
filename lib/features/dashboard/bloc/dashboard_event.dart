import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class DashboardEvent {
  const DashboardEvent();
}

class DashboardEventInitialize extends DashboardEvent {
  final String username;
  final int codiceIntermediario;
  const DashboardEventInitialize(
      {required this.username, required this.codiceIntermediario});
}

class EliminaPreventivoEvent extends DashboardEvent {
  final int idPreventivo;
  const EliminaPreventivoEvent({required this.idPreventivo});
}

class FetchFunzionalitaEvent extends DashboardEvent {
  const FetchFunzionalitaEvent();
}

class SetTutorialCompletedEvent extends DashboardEvent {
  const SetTutorialCompletedEvent();
}
