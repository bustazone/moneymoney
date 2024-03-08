import 'package:dio/dio.dart';
import 'package:moneymoney/common/servicies/network/network_client_int.dart';
import 'package:moneymoney/common/servicies/network/network_request.dart';
import 'package:moneymoney/common/servicies/network/network_response.dart';

class DioNetClient implements INetworkClient {
  
  late final Dio instance;
  final Map<String, CancelToken> cancelableMap = {};

  DioNetClient() {
    final options = BaseOptions(
      baseUrl: 'https://api.pub.dev',
      connectTimeout: Duration(seconds: 5),
      receiveTimeout: Duration(seconds: 3),
    );
    instance = Dio(options);
  }

  @override
  Future<NetworkResponse<String, String>> makeCall(NetworkRequest req) async {
    final cancelToken_ = CancelToken();
    if (!cancelableMap.containsKey(req.reqId)) {
      cancelableMap[req.reqId] = cancelToken_;
    }
    RequestOptions ro = RequestOptions(
      path: req.url,
      method: req.method.name,
      headers: req.headers,
      data: req.body,
      cancelToken: cancelToken_,
    );
    final response = await instance.fetch(ro);
    return NetworkResponse<String, String>();
  }
  
  @override
  void cancelPendingRequest(String reqId) {
    if (cancelableMap.containsKey(reqId)) {
      cancelableMap[reqId]?.cancel();
      cancelableMap.remove(reqId); 
    }
  }
  
  @override
  void cancelPendingRequests() {
    cancelableMap.forEach((key, value) => value.cancel());
    cancelableMap.clear();
  }

}