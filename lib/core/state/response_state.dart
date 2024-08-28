abstract class ResponseState<T> {
  final T data;

  ResponseState(this.data);
}

class InitialState extends ResponseState {
  InitialState() : super(null);
}

class SuccessState<T> extends ResponseState<T> {
  SuccessState(super.data);
}

class ErrorState<T> extends ResponseState<T> {
  ErrorState(super.data);
}

class LoadingState extends ResponseState {
  LoadingState() : super(null);
}
