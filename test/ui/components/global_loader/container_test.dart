import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:moneymoney/ui/components/global_loader/container.dart';
import 'package:moneymoney/ui/components/global_loader/provider.dart';

class GlobalLoaderOverlayNotifierMock extends Notifier<int>
    with Mock
    implements GlobalLoaderOverlayNotifier {}

void main() {
  group('get movement use case', () {
    testWidgets('GlobalLoaderOverlay start with no loader', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            // globalLoaderOverlayProvider.overrideWith(GlobalLoaderOverlayNotifierMock.new)
          ],
          child: const MaterialApp(
            home: GlobalLoaderOverlay(),
          ),
        ),
      );

      final element = tester.element(find.byType(GlobalLoaderOverlay));
      final container = ProviderScope.containerOf(element);

      expect(find.byKey(GlobalLoaderOverlay.loaderKey), findsNothing);
    });



    testWidgets('GlobalLoaderOverlay show loader with an indefinite showLoader order', (tester) async {
      await tester.pumpWidget(
        const ProviderScope(
          overrides: [
            // globalLoaderOverlayProvider.overrideWith(GlobalLoaderOverlayNotifierMock.new)
          ],
          child: MaterialApp(
            home: GlobalLoaderOverlay(),
          ),
        ),
      );

      final element = tester.element(find.byType(GlobalLoaderOverlay));
      final container = ProviderScope.containerOf(element);

      expect(find.byKey(GlobalLoaderOverlay.loaderKey), findsNothing);

      container
          .read(globalLoaderOverlayProvider.notifier)
          .showLoader();

      print(container.read(globalLoaderOverlayProvider));

      await tester.pump();

      expect(find.byKey(GlobalLoaderOverlay.loaderKey), findsOneWidget);
    });

    testWidgets('GlobalLoaderOverlay complete', (tester) async {
      await tester.pumpWidget(
        const ProviderScope(
          overrides: [
            // globalLoaderOverlayProvider.overrideWith(GlobalLoaderOverlayNotifierMock.new)
          ],
          child: MaterialApp(
            home: GlobalLoaderOverlay(),
          ),
        ),
      );

      final element = tester.element(find.byType(GlobalLoaderOverlay));
      final container = ProviderScope.containerOf(element);

      expect(find.byKey(GlobalLoaderOverlay.loaderKey), findsNothing);

      container
          .read(globalLoaderOverlayProvider.notifier)
          .showLoader(timeoutSeconds: 3);

      print(container.read(globalLoaderOverlayProvider));

      await tester.pump(const Duration(seconds: 1));

      expect(find.byKey(GlobalLoaderOverlay.loaderKey), findsOneWidget);

      await tester.pump(const Duration(seconds: 4));

      expect(find.byKey(GlobalLoaderOverlay.loaderKey), findsNothing);
    });
  });
}
