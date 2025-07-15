import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/common/bloc/exception_state.dart';

class ExceptionBloc extends Cubit<ExceptionState> {
  ExceptionBloc() : super(ExceptionState(''));

  String? _lastMessage;

  void throwExceptionState(String message) {
    if (_lastMessage != message) {
      _lastMessage = message;
      emit(ExceptionState(message));
    }
  }

  void clearException() {
    _lastMessage = null;
    emit(ExceptionState(''));
  }
}
