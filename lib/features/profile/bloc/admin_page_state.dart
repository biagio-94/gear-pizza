import 'package:equatable/equatable.dart';
import 'package:gearpizza/features/dashboard/models/alergen_dto.dart';
import 'package:gearpizza/features/profile/models/admin_page_dto.dart';

abstract class AdminPageState extends Equatable {
  const AdminPageState();

  @override
  List<Object?> get props => [];
}

class AdminPageInitial extends AdminPageState {}

class AdminPageLoaded extends AdminPageState {
  final AdminPageDto data;
  final List<AllergenDto> allergens;

  const AdminPageLoaded({
    required this.data,
    required this.allergens,
  });

  AdminPageLoaded copyWith({
    AdminPageDto? data,
    List<AllergenDto>? allergens,
  }) {
    return AdminPageLoaded(
      data: data ?? this.data,
      allergens: allergens ?? this.allergens,
    );
  }

  @override
  List<Object?> get props => [data, allergens];
}

class AdminPageError extends AdminPageState {
  final String message;

  const AdminPageError(this.message);

  @override
  List<Object?> get props => [message];
}
