import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';
import 'package:moneymoney/common/servicies/network/network_client_dio.dart';
import 'package:moneymoney/common/servicies/network/network_client_int.dart';
import 'package:moneymoney/common/servicies/secure_storage/secure_storage_service.dart';
import 'package:moneymoney/common/servicies/secure_storage/secure_storage_service_int.dart';
import 'package:moneymoney/core/movement/data/repositories/movements_local_repository.dart';
import 'package:moneymoney/core/movement/data/repositories/movements_network_repository.dart';
import 'package:moneymoney/core/movement/domain/interfaces/movements_repository.dart';
import 'package:moneymoney/core/movement/domain/use_cases/GetMovementsUseCase.dart';
import 'package:moneymoney/ui/components/dialog_service/service.dart';
import 'package:moneymoney/ui/components/dialog_service/service_int.dart';
import 'package:moneymoney/ui/components/global_loader/provider.dart';
import 'package:moneymoney/ui/components/snackbar_service/service.dart';
import 'package:moneymoney/ui/components/snackbar_service/service_int.dart';
import 'package:moneymoney/ui/navigation/router.dart';
import 'package:moneymoney/common/overlay/overlay_custom_controller.dart';

class MockIMovementsRepository extends Mock implements IMovementsRepository {}
class MockISnackbarService extends Mock implements ISnackbarService {}
class MockISecureStorageService extends Mock implements ISecureStorageService {}
void configureMockDependencies() {
  // Services
  GetIt.I.registerSingleton<ISecureStorageService>(MockISecureStorageService());
  
  // Repositories
  GetIt.I.registerSingleton<IMovementsRepository>(MockIMovementsRepository());

  // UseCases
  GetIt.I.registerFactory<GetMovementdUseCase>(() => GetMovementdUseCase(GetIt.I.get<IMovementsRepository>()));

  // Services
  GetIt.I.registerSingleton<GlobalKey<NavigatorState>>(GlobalKey<NavigatorState>());
  GetIt.I.registerSingleton<GlobalKey<ScaffoldMessengerState>>(GlobalKey<ScaffoldMessengerState>());
  
  GetIt.I.registerLazySingleton<ISnackbarService>(() => MockISnackbarService());
  GetIt.I.registerSingleton<ProviderContainer>(ProviderContainer(overrides: [
    // globalLoaderOverlayProvider.overrideWith(() => FakeRepository())
  ]));
  GetIt.I.registerLazySingleton<GoRouter>(() => router);

  
}
