enum LoadingStatus { loading, idle }

class LoadingState {
  final LoadingStatus status;
  final String? loadingText;

  LoadingState({this.status = LoadingStatus.idle, this.loadingText});

  LoadingState copyWith({LoadingStatus? status, String? loadingText}) {
    return LoadingState(
      status: status ?? this.status,
      loadingText: loadingText ?? this.loadingText,
    );
  }
}
