import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class ProfileEvent {
  const ProfileEvent();
}

class ProfileInitialize extends ProfileEvent {
  const ProfileInitialize();
}

class UpdateConsensiStatus extends ProfileEvent {
  final bool newStatus;
  const UpdateConsensiStatus({required this.newStatus});
}
