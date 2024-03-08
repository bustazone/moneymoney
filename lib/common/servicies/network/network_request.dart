import 'dart:math';

enum RequestMethod {
  get,
  post,
  patch,
  pul,
  delete,
}

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();

String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
    
class NetworkRequest {
  late final String reqId;
  final String url;
  final RequestMethod method;
  final Map<String, dynamic>? headers;
  final Object? body;
  
  NetworkRequest({
    required this.url,
    required this.method,
    this.headers,
    this.body,
  }) {
    reqId = getRandomString(8);
  }
}
