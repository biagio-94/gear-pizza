import 'package:equatable/equatable.dart';
import 'package:gearpizza/features/profile/models/admin_page_dto.dart';

abstract class AdminPageState extends Equatable {
  const AdminPageState();

  @override
  List<Object?> get props => [];
}

class AdminPageInitial extends AdminPageState {}

class AdminPageLoaded extends AdminPageState {
  final AdminPageDto data;

  const AdminPageLoaded(this.data);

  @override
  List<Object?> get props => [data];
}

class AdminPageError extends AdminPageState {
  final String message;

  const AdminPageError(this.message);

  @override
  List<Object?> get props => [message];
}
