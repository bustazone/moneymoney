import 'package:moneymoney/common/servicies/network/network_client_int.dart';
import 'package:moneymoney/common/servicies/network/network_request.dart';
import 'package:moneymoney/core/movement/domain/interfaces/movements_repository.dart';
import 'package:moneymoney/core/movement/domain/models/movement.dart';

class MovementsNetworkRepository implements IMovementsRepository {

  final INetworkClient netClient;

  MovementsNetworkRepository({
    required this.netClient
  });
  
  @override
  Future<List<Movement>> getMovementsList() async {

    try {
      final req = NetworkRequest(url: 'https://pokeapi.co/api/v2/berry/-1/', method: RequestMethod.get);
      final res = await netClient.makeCall(req);
      print(res);
    } catch (e) {
      print(e);
    }
    
    return Future.delayed(const Duration(seconds: 2), () {
      return [
        Movement.empty(),
        Movement.empty()
      ];
    });
  }
  
}