import 'package:moneymoney/common/servicies/secure_storage/secure_storage_service_int.dart';
import 'package:moneymoney/core/movement/domain/interfaces/movements_repository.dart';
import 'package:moneymoney/core/movement/domain/models/movement.dart';

class MovementsLocalRepository implements IMovementsRepository {

  final ISecureStorageService storageService;

  MovementsLocalRepository({
    required this.storageService
  });

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