import 'package:moneymoney/core/movement/domain/interfaces/movements_repository.dart';
import 'package:moneymoney/core/movement/domain/models/movement.dart';

class MovementsLocalRepository implements IMovementsRepository {
  @override
  Future<List<Movement>> getMovementsList() {
    return Future.delayed(const Duration(seconds: 2), () {
      return [
        Movement.empty(),
        Movement.empty()
      ];
    });
  }
  
}