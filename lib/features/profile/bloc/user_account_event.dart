abstract class UserAccountEvent {}

class LoadUserAccountEvent extends UserAccountEvent {}

class UpdateUserFieldEvent extends UserAccountEvent {
  final String field;
  final String value;

  UpdateUserFieldEvent({required this.field, required this.value});
}
