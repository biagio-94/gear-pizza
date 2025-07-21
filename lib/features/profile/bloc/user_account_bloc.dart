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
    emit(UserAccountLoading());
    await ExecutionHelper.run(
      showLoading: () => loadingBloc.showLoading('Caricamento dati utente...'),
      hideLoading: () => loadingBloc.hideLoading(),
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        final userProfile = await _userService.fetchUserProfile();

        if (userProfile == null) {
          emit(UserAccountInitial());
          return;
        }

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
      onError: (msg) => exceptionBloc.throwExceptionState(msg),
      action: () async {
        // Ricava i valori esistenti
        final existingName = current.name;
        final existingEmail = current.email;

        // Decidi cosa aggiornare e cosa mantenere
        final updatedName =
            event.field == 'full_name' ? event.value : existingName;
        final updatedEmail =
            event.field == 'email' ? event.value : existingEmail;

        // Chiamata al service (API + storage)
        await _userService.patchUser(
          fullName: updatedName,
          email: updatedEmail,
        );

        // Emissione del nuovo stato con entrambi i valori
        emit(UserAccountLoaded(
          name: updatedName,
          email: updatedEmail,
        ));
      },
    );
  }
}
