class NetworkResponse<T, E> {
  final int? statusCode;
  final T? data;
  final E? error;

  NetworkResponse({
    this.statusCode,
    this.data,
    this.error,
  });
  
}
