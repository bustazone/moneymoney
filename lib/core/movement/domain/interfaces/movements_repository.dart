import 'package:moneymoney/core/movement/domain/models/movement.dart';

abstract class IMovementsRepository {
  Future<List<Movement>> getMovementsList();
}