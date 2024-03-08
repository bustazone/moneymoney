import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
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
import 'package:moneymoney/ui/components/snackbar_service/service.dart';
import 'package:moneymoney/ui/components/snackbar_service/service_int.dart';
import 'package:moneymoney/ui/navigation/router.dart';
import 'package:moneymoney/common/overlay/overlay_custom_controller.dart';

void configureDependencies() {
  // Services
  GetIt.I.registerSingleton<ISecureStorageService>(SecureStorageService());
  GetIt.I.registerSingleton<INetworkClient>(DioNetClient());

  // Repositories
  // GetIt.I.registerFactory<IMovementsRepository>(() => MovementsLocalRepository(storageService: GetIt.I.get<ISecureStorageService>()));
  GetIt.I.registerSingleton<IMovementsRepository>(MovementsNetworkRepository(netClient: GetIt.I.get<INetworkClient>()));

  // UseCases
  GetIt.I.registerFactory<GetMovementdUseCase>(() => GetMovementdUseCase(GetIt.I.get<IMovementsRepository>()));

  // App conf
  GetIt.I.registerSingleton<GlobalKey<NavigatorState>>(GlobalKey<NavigatorState>());
  GetIt.I.registerSingleton<GlobalKey<ScaffoldMessengerState>>(GlobalKey<ScaffoldMessengerState>());
  GetIt.I.registerLazySingleton<IDialogService>(() => DialogService(navKey: GetIt.I.get<GlobalKey<NavigatorState>>()));
  GetIt.I.registerLazySingleton<ISnackbarService>(() => SnackbarService(scaffoldKey: GetIt.I.get<GlobalKey<ScaffoldMessengerState>>()));
  GetIt.I.registerSingleton<ProviderContainer>(ProviderContainer());
  GetIt.I.registerLazySingleton<GoRouter>(() => router);
  GetIt.I.registerSingleton<OverlayCustomController>(OverlayCustomController(), instanceName: 'GlobalLoader');
  GetIt.I.registerSingleton<OverlayCustomController>(OverlayCustomController(), instanceName: 'Dialog');
}
