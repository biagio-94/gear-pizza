import 'package:equatable/equatable.dart';
import 'package:gearpizza/common/model/intermediario.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:gearpizza/common/model/referente_response.dart';

@immutable
abstract class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object?> get props => [];
}

class ProfileStateUninitialized extends ProfileState {
  const ProfileStateUninitialized();
}

class ProfileStateInitialized extends ProfileState {
  final Intermediario intermediario;
  final ReferenteResponse? referente;
  final bool isSwitchLoading;
  @override
  List<Object?> get props => [intermediario, isSwitchLoading];
  const ProfileStateInitialized({
    required this.intermediario,
    required this.referente,
    required this.isSwitchLoading,
  });
}
