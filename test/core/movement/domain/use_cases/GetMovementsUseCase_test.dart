import 'package:get_it/get_it.dart';
import 'package:test/test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:moneymoney/core/movement/domain/interfaces/movements_repository.dart';
import 'package:moneymoney/core/movement/domain/models/movement.dart';
import 'package:moneymoney/core/movement/domain/use_cases/GetMovementsUseCase.dart';

import '../../../../mocks/injector_conf.dart';

class MockIMovementsRepository extends Mock implements IMovementsRepository {}

void main() {
	group(
		'get movement use case', 
		() {
      late GetMovementdUseCase useCase;
      late IMovementsRepository mockMovementsRepository;

      setUp(() {
        configureMockDependencies();
        mockMovementsRepository = GetIt.I.get<IMovementsRepository>();
        useCase = GetMovementdUseCase(mockMovementsRepository);
      });

      tearDown(() {
        resetMocktailState();
      });

			test('return an ok list', () async {
        when(() => mockMovementsRepository.getMovementsList()).thenAnswer(
          (_) async {
            return Future.value([Movement.empty(), Movement.empty()]);
          }
        );
        final out = await useCase.call();
        expect(out.length, 2);
        verify(() => mockMovementsRepository.getMovementsList()).called(1);
      });
		},
	);
}