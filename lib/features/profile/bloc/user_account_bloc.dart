import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/common/bloc/exception_bloc.dart';
import 'package:gearpizza/common/bloc/loading_bloc.dart';
import 'package:gearpizza/common/utils/bloc_exception_helper.dart';
import 'package:gearpizza/features/profile/bloc/user_account_event.dart';
import 'package:gearpizza/features/profile/bloc/user_account_state.dart';
import 'package:gearpizza/features/profile/services/user_service.dart';
import 'package:get_it/get_it.dart';

class UserAccountBloc extends Bloc<UserAccountEvent, UserAccountState> {
  UserService _userService;

  final loadingBloc = GetIt.instance<LoadingBloc>();
  final exceptionBloc = GetIt.instance<ExceptionBloc>();

  UserAccountBloc(this._userService) : super(UserAccountInitial()) {
    on<LoadUserAccountEvent>(_onLoadUserAccount);
    on<UpdateUserFieldEvent>(_onUpdateUserField);
  }

  Future<void> _onLoadUserAccount(
    LoadUserAccountEvent event,
    Emitter<UserAccountState> emit,
  ) async {
    await ExecutionHelper.run(
      showLoading: () => loadingBloc.showLoading('Caricamento dati utente...'),
      hideLoading: () => loadingBloc.hideLoading(),
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        // Carica il profilo dall'ultima fonte disponibile (storage o API)
        // Puoi decidere qui se forzare fetch da API con fromApi: true
        final userProfile = await _userService.getUserProfile(fromApi: false);

        emit(UserAccountLoaded(
          name: userProfile.fullName,
          email: userProfile.email,
        ));
      },
    );
  }

  Future<void> _onUpdateUserField(
    UpdateUserFieldEvent event,
    Emitter<UserAccountState> emit,
  ) async {
    final current = state;
    if (current is! UserAccountLoaded) return;

    await ExecutionHelper.run(
      showLoading: () => loadingBloc.showLoading('Aggiornamento dati...'),
      hideLoading: () => loadingBloc.hideLoading(),
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        // Aggiorna il profilo via service (che aggiorna sia API che storage)
        await _userService.updateUserProfile({event.field: event.value});

        // Emissione stato aggiornato
        emit(UserAccountLoaded(
          name: event.field == 'full_name' ? event.value : current.name,
          email: event.field == 'email' ? event.value : current.email,
        ));
      },
    );
  }
}
