import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/common/bloc/loading_state.dart';

class LoadingBloc extends Cubit<LoadingState> {
  LoadingBloc() : super(LoadingState());

  void showLoading(String? loadingText) {
    emit(LoadingState(status: LoadingStatus.loading, loadingText: loadingText));
  }

  void hideLoading() {
    emit(state.copyWith(status: LoadingStatus.idle, loadingText: null));
  }
}
