sealed class AsyncValue<T> {}

class AsyncValueData<T> extends AsyncValue<T> {
  final T data;

  AsyncValueData({required this.data});

  @override
  String toString() => 'AsyncValueData: $data';
}

class AsyncValueError<T> extends AsyncValue<T> {
  final Object error;

  AsyncValueError({required this.error});

  @override
  String toString() => 'AsyncValueError: $error';
}

class AsyncValueLoading<T> extends AsyncValue<T> {}
