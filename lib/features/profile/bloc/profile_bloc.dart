import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:gearpizza/common/bloc/exception_bloc.dart';
import 'package:gearpizza/common/bloc/loading_bloc.dart';
import 'package:gearpizza/common/services/api_service_exception.dart';
import 'package:gearpizza/features/profile/bloc/profile_event.dart';
import 'package:gearpizza/features/profile/bloc/profile_state.dart';
import 'package:gearpizza/features/profile/repositories/profile_repository.dart';
import 'package:gearpizza/features/profile/services/profile_service_exception.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final loadingBloc = GetIt.instance<LoadingBloc>();
  final exceptionBloc = GetIt.instance<ExceptionBloc>();
  final ProfileRepository _profileRepository;
  ProfileBloc(this._profileRepository) : super(ProfileStateUninitialized()) {
    on<UpdateConsensiStatus>(_updateConsensiNpotification);
    on<ProfileInitialize>(_onProfileInitialize);
    add(const ProfileInitialize());
  }

  void _onProfileInitialize(
      ProfileInitialize event, Emitter<ProfileState> emit) async {
    try {
      loadingBloc.showLoading('Caricamento dati utente...');
      // emit(ProfileStateInitialized(
      //   intermediario: GetIt.instance<AuthUser>().intermediario,
      //   referente: GetIt.instance<AuthUser>().referente,
      //   isSwitchLoading: false,
      // ));
    } on ProfileServiceException catch (e) {
      exceptionBloc.throwExceptionState(e.message);
    } catch (_) {
      exceptionBloc.throwExceptionState(GenericException().message);
    } finally {
      loadingBloc.hideLoading();
    }
  }

  void _updateConsensiNpotification(
      UpdateConsensiStatus event, Emitter<ProfileState> emit) async {
    try {
      final currState = state as ProfileStateInitialized;
      // emit(ProfileStateInitialized(
      //   intermediario: currState.intermediario,
      //   referente: GetIt.instance<AuthUser>().referente,
      //   isSwitchLoading: true,
      // ));
      // final bool updatedNotifyStatus = await _profileRepository
      //     .updateSendNotificationStatus(isEnabled: event.newStatus);

      // if (updatedNotifyStatus == true &&
      //     GetIt.instance<AuthUser>().intermediario.collegato != null) {
      //   final Intermediario newIntermediario =
      //       await _profileRepository.fetchProfileData(
      //           codiceCollegato:
      //               GetIt.instance<AuthUser>().intermediario.collegato!);
      //   GetIt.instance<AuthUser>().updateIntermediario(newIntermediario);
      //   emit(ProfileStateInitialized(
      //     intermediario: newIntermediario,
      //     referente: GetIt.instance<AuthUser>().referente,
      //     isSwitchLoading: false,
      //   ));
      // }
    } on ProfileServiceException catch (e) {
      exceptionBloc.throwExceptionState(e.message);
    } catch (_) {
      exceptionBloc.throwExceptionState(GenericException().message);
    }
  }
}
