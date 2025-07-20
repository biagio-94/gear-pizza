abstract class UserAccountState {}

class UserAccountInitial extends UserAccountState {}

class UserAccountLoading extends UserAccountState {}

class UserAccountLoaded extends UserAccountState {
  final String name;
  final String email;

  UserAccountLoaded({required this.name, required this.email});
}

class UserAccountFailure extends UserAccountState {
  final String message;

  UserAccountFailure(this.message);
}
