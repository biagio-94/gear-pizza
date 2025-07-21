import 'package:equatable/equatable.dart';
import 'package:gearpizza/features/dashboard/models/pizza_dto.dart';
import 'package:image_picker/image_picker.dart';

abstract class AdminPageEvent extends Equatable {
  const AdminPageEvent();

  @override
  List<Object?> get props => [];
}

class FetchAdminPageData extends AdminPageEvent {
  final int restaurantId;

  const FetchAdminPageData(this.restaurantId);

  @override
  List<Object?> get props => [restaurantId];
}

class UpdateRestaurantImage extends AdminPageEvent {
  final int restaurantId;
  final XFile xfile;

  const UpdateRestaurantImage({
    required this.restaurantId,
    required this.xfile,
  });

  @override
  List<Object?> get props => [restaurantId, xfile];
}

class DeletePizzaEvent extends AdminPageEvent {
  final int pizzaId;
  final int restaurantId;

  const DeletePizzaEvent({required this.pizzaId, required this.restaurantId});

  @override
  List<Object?> get props => [pizzaId, restaurantId];
}

class UpdateRestaurantname extends AdminPageEvent {
  final String restaurantName;
  final int restaurantId;

  const UpdateRestaurantname(
      {required this.restaurantName, required this.restaurantId});

  @override
  List<Object?> get props => [restaurantName, restaurantId];
}

class SelectedProductToEdit extends AdminPageEvent {
  final PizzaDto pizza;
  const SelectedProductToEdit(this.pizza);
}

class SaveProductEvent extends AdminPageEvent {
  final PizzaDto pizza;
  final XFile? xfile;

  SaveProductEvent({
    required this.pizza,
    this.xfile,
  });

  @override
  List<Object?> get props => [pizza, xfile?.path];
}
