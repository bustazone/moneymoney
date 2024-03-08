import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:moneymoney/common/servicies/secure_storage/secure_storage_service_int.dart';
import 'package:moneymoney/core/movement/domain/interfaces/movements_repository.dart';
import 'package:moneymoney/core/movement/domain/models/movement.dart';
import 'package:moneymoney/ui/app.dart';
import 'package:moneymoney/ui/components/global_loader/container.dart';
import 'package:moneymoney/ui/pages/movement_list/view.dart';

import '../test/mocks/injector_conf.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  late IMovementsRepository mockMovementsRepository;
  late ISecureStorageService mockSecureStorageService;

  setUp(() {
    configureMockDependencies();
    mockMovementsRepository = GetIt.I.get<IMovementsRepository>();
    mockSecureStorageService = GetIt.I.get<ISecureStorageService>();
  });

  tearDown(() {
    resetMocktailState();
  });

  group('end-to-end test', () {
    testWidgets('tap on the floating action button, verify counter',
        (tester) async {

      when(() => mockMovementsRepository.getMovementsList()).thenAnswer(
        (_) {
          return Future.value([Movement.empty(), Movement.empty()]);
        }
      );

      when(() => mockSecureStorageService.read(key: any(named: 'key'), defaultValue: any(named: 'defaultValue'))).thenAnswer(
        (_) {
          return Future.value('[]');
        }
      );

      when(() => mockSecureStorageService.write(key: any(named: 'key'), value: any(named: 'value'))).thenAnswer(
        (_) {
          return Future.value();
        }
      );

      await tester.pumpWidget(const App());

      expect(find.byKey(GlobalLoaderOverlay.loaderKey), findsNothing);

      // await Future.delayed(const Duration(seconds: 5));

      final fab = find.byKey(MovementListScreenView.floatingButtonKey);

      await tester.tap(fab);

      await tester.pumpAndSettle();

      expect(find.byKey(GlobalLoaderOverlay.loaderKey), findsOneWidget);

    });
  });
}