import 'package:equatable/equatable.dart';

abstract class OrdersEvent extends Equatable {
  const OrdersEvent();

  @override
  List<Object?> get props => [];
}

class LoadOrders extends OrdersEvent {
  const LoadOrders();
}

class UpdateOrderStatusEvent extends OrdersEvent {
  final String orderId;
  final String newStatus;
  const UpdateOrderStatusEvent(
      {required this.orderId, required this.newStatus});
}
