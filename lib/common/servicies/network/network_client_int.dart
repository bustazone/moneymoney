import 'package:moneymoney/common/servicies/network/network_request.dart';
import 'package:moneymoney/common/servicies/network/network_response.dart';

abstract class INetworkClient {
  Future<NetworkResponse<String, String>> makeCall(NetworkRequest req);
  void cancelPendingRequest(String reqId);
  void cancelPendingRequests();
}
