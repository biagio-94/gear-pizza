import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/features/profile/bloc/admin_page_event.dart';
import 'package:gearpizza/features/profile/bloc/admin_page_state.dart';
import 'package:gearpizza/features/profile/services/user_service.dart';
import 'package:get_it/get_it.dart';
import 'package:gearpizza/common/bloc/exception_bloc.dart';
import 'package:gearpizza/common/bloc/loading_bloc.dart';
import 'package:gearpizza/common/utils/bloc_exception_helper.dart';

class AdminPageBloc extends Bloc<AdminPageEvent, AdminPageState> {
  final UserService _userService;
  final loadingBloc = GetIt.instance<LoadingBloc>();
  final exceptionBloc = GetIt.instance<ExceptionBloc>();

  AdminPageBloc(this._userService) : super(AdminPageInitial()) {
    on<FetchAdminPageData>(_onFetchAdminPageData);
    on<UpdateRestaurantImage>(_onUpdateRestaurantImage);
    on<DeletePizzaEvent>(_onDeletePizza);
    on<UpdateRestaurantname>(_updateRestaurantName);
    on<SaveProductEvent>(_onSaveProduct);
  }

  Future<void> _onFetchAdminPageData(
    FetchAdminPageData event,
    Emitter<AdminPageState> emit,
  ) async {
    await ExecutionHelper.run(
      showLoading: () => loadingBloc.showLoading('Caricamento dati...'),
      hideLoading: () => loadingBloc.hideLoading(),
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        final adminPageData =
            await _userService.fetchAdminPageDto(event.restaurantId);
        final allergens = await _userService.fetchAllAllergens();

        emit(AdminPageLoaded(data: adminPageData, allergens: allergens));
      },
    );
  }

  Future<void> _onUpdateRestaurantImage(
    UpdateRestaurantImage event,
    Emitter<AdminPageState> emit,
  ) async {
    await ExecutionHelper.run(
      showLoading: () => loadingBloc.showLoading('Caricamento immagine...'),
      hideLoading: () => loadingBloc.hideLoading(),
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        await _userService.updateRestaurantImageById(
          restaurantId: event.restaurantId,
          xfile: event.xfile,
        );

        // Dopo update, ricarico i dati aggiornati
        final adminPageData =
            await _userService.fetchAdminPageDto(event.restaurantId);
        final currentState = state;
        if (currentState is AdminPageLoaded) {
          emit(currentState.copyWith(data: adminPageData));
        }
      },
    );
  }

  Future<void> _updateRestaurantName(
    UpdateRestaurantname event,
    Emitter<AdminPageState> emit,
  ) async {
    await ExecutionHelper.run(
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        await _userService.updateRestaurantName(
          restaurantName: event.restaurantName,
          restaurantId: event.restaurantId,
        );

        final updatedData =
            await _userService.fetchAdminPageDto(event.restaurantId);

        final currentState = state;
        if (currentState is AdminPageLoaded) {
          emit(currentState.copyWith(data: updatedData));
        }
      },
    );
  }

  Future<void> _onDeletePizza(
    DeletePizzaEvent event,
    Emitter<AdminPageState> emit,
  ) async {
    await ExecutionHelper.run(
      showLoading: () =>
          loadingBloc.showLoading('Eliminazione pizza in corso...'),
      hideLoading: () => loadingBloc.hideLoading(),
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        // Esegui il delete con loading e gestione errori
        await _userService.deletePizzaById(event.pizzaId);

        // Ricarica i dati aggiornati e emetti il nuovo stato
        final updatedData = await _userService.fetchAdminPageDto(
          event.restaurantId,
        );
        final currentState = state;
        if (currentState is AdminPageLoaded) {
          emit(currentState.copyWith(data: updatedData));
        }
      },
    );
  }

  Future<void> _onSaveProduct(
    SaveProductEvent event,
    Emitter<AdminPageState> emit,
  ) async {
    await ExecutionHelper.run(
      showLoading: () => loadingBloc.showLoading('Salvataggio pizza...'),
      hideLoading: () => loadingBloc.hideLoading(),
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        await _userService.saveOrUpdatePizza(
            pizza: event.pizza, file: event.xfile);

        final updatedData =
            await _userService.fetchAdminPageDto(event.pizza.restaurantId);
        final currentState = state;
        if (currentState is AdminPageLoaded) {
          emit(currentState.copyWith(data: updatedData));
        }
      },
    );
  }
}
