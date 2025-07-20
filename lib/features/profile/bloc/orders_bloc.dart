import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:gearpizza/features/profile/bloc/orders_event.dart';
import 'package:gearpizza/features/profile/bloc/orders_state.dart';
import 'package:gearpizza/features/profile/services/user_service.dart';
import 'package:gearpizza/common/bloc/loading_bloc.dart';
import 'package:gearpizza/common/bloc/exception_bloc.dart';
import 'package:gearpizza/common/utils/bloc_exception_helper.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final UserService _userService;
  final loadingBloc = GetIt.instance<LoadingBloc>();
  final exceptionBloc = GetIt.instance<ExceptionBloc>();

  OrdersBloc(this._userService) : super(OrdersInitial()) {
    on<LoadOrders>(_onLoadOrders);
  }

  Future<void> _onLoadOrders(
    LoadOrders event,
    Emitter<OrdersState> emit,
  ) async {
    await ExecutionHelper.run(
      showLoading: () => loadingBloc.showLoading('Caricamento ordini...'),
      hideLoading: () => loadingBloc.hideLoading(),
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        final orders = await _userService.getOrdersByUserId();
        emit(OrdersLoaded(orders));
      },
    );
  }
}
