import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:gearpizza/common/bloc/exception_bloc.dart';
import 'package:gearpizza/common/bloc/loading_bloc.dart';
import 'package:gearpizza/common/model/configurazione_prodotto.dart';
import 'package:gearpizza/common/model/funzionalita.dart';
import 'package:gearpizza/common/model/tabella_finanziaria.dart';
import 'package:gearpizza/common/services/api_service_exception.dart';
import 'package:gearpizza/features/auth/models/auth_gear_pizza_user.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_event.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_state.dart';
import 'package:gearpizza/features/dashboard/services/dashboard_service.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final DashboardService dashboardService;
  final loadingBloc = GetIt.instance<LoadingBloc>();
  final exceptionBloc = GetIt.instance<ExceptionBloc>();

  DashboardBloc(this.dashboardService)
      : super(DashboardInitializedState(
          preventivi: [],
          username: 'Utente',
        )) {
    on<FetchFunzionalitaEvent>((event, emit) async {
      try {
        loadingBloc.showLoading("Caricamento funzionalità");
        if (state is DashboardInitializedState) {
          final currentState = state as DashboardInitializedState;

          final preventivi = currentState.preventivi;
          final username = currentState.username;

          emit(ChooseFunzionalitaState(
            funzionalita: [Funzionalita()],
            preventivi: preventivi,
            username: username,
          ));
        } else {
          emit(ChooseFunzionalitaState(
            funzionalita: [],
            preventivi: [],
            username: '',
          ));
        }
      } on ApiServiceException catch (e) {
        exceptionBloc.throwExceptionState(e.message);
      } catch (_) {
        exceptionBloc.throwExceptionState('Errore generico');
      } finally {
        loadingBloc.hideLoading();
      }
    });

    on<DashboardEventInitialize>((event, emit) async {
      try {
        // Mostra il loader
        loadingBloc.showLoading("Caricamento preventivi...");

        // Fetch dei preventivi

        // Emissione dello stato con i dati iniziali
        emit(DashboardInitializedState(
          preventivi: [],
          username: event.username,
        ));

        // Caricamento dei prodotti in background
        // final List<ConfigurazioneProdotto> prodotti =
        //     await autoNuovaService.getProdotti();

        // final List<TabellaFinanziaria> tabelleFinanziarie =
        //     await autoNuovaService.getTabelleFinanziarie(
        //   codiceIntermediario: event.codiceIntermediario,
        // );
      } catch (e) {
        // Gestione dell'errore
        exceptionBloc.throwExceptionState('Errore durante l\'inizializzazione');
      } finally {
        // Nasconde il loader
        loadingBloc.hideLoading();
      }
    });

    on<SetTutorialCompletedEvent>((event, emit) async {
      try {
        loadingBloc.showLoading("Caricamento preventivi...");
        if (state is DashboardInitializedState) {
          final currentState = state as DashboardInitializedState;
          await dashboardService.saveTutorialCompleted();
          emit(DashboardInitializedState(
            preventivi: currentState.preventivi,
            username: currentState.username,
          ));
        }
      } catch (e) {
        exceptionBloc.throwExceptionState('Errore durante l\'inizializzazione');
      } finally {
        loadingBloc.hideLoading();
      }
    });

    on<EliminaPreventivoEvent>((event, emit) async {
      try {
        loadingBloc.showLoading("Eliminazione preventivo...");

        if (state is DashboardInitializedState) {
          final currentState = state as DashboardInitializedState;

          final bool? isEliminated =
              await dashboardService.getEliminaPreventivo(
            id: event.idPreventivo,
          );

          if (isEliminated == true) {
            final updatedPreventivi = currentState.preventivi
                .where((preventivo) => preventivo.id != event.idPreventivo)
                .toList();

            emit(DashboardInitializedState(
              preventivi: updatedPreventivi,
              username: currentState.username,
            ));
          } else {
            exceptionBloc.throwExceptionState(
                'Errore: impossibile eliminare il preventivo.');
          }
        } else {
          exceptionBloc
              .throwExceptionState('Stato non valido per questa operazione.');
        }
      } catch (e) {
        exceptionBloc.throwExceptionState('Errore durante l\'eliminazione: $e');
      } finally {
        loadingBloc.hideLoading();
      }
    });
  }
}
