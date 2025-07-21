import 'package:equatable/equatable.dart';
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
