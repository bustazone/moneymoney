import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:moneymoney/core/movement/domain/interfaces/movements_repository.dart';
import 'package:moneymoney/core/movement/domain/models/movement.dart';
import 'package:moneymoney/ui/components/dialog_overlay/provider.dart';
import 'package:moneymoney/ui/components/dialog_service/service_int.dart';
import 'package:moneymoney/ui/components/global_loader/provider.dart';
import 'package:moneymoney/ui/components/snackbar_service/service_int.dart';

class GetMovementdUseCase {
  final IMovementsRepository _movementsRepository;

  GetMovementdUseCase(
    this._movementsRepository
  );

  Future<List<Movement>> call() {
    final providerContainer = GetIt.I.get<ProviderContainer>();
    // providerContainer.read(dialogProvider.notifier).showDialog(const Text('fffff'), seconds: 5);

    // final dialogService = GetIt.I.get<IDialogService>();
    // dialogService.showDialog_(const Text('fffff'));
    // dialogService.showDialog_(const Center(child: Text('hhhhh')));
    // Future.delayed(const Duration(seconds: 2), () {
    //   dialogService.hideDialog_();
    // });
    // Future.delayed(const Duration(seconds: 5), () {
    //   dialogService.hideDialog_();
    // });

    final snackbarService = GetIt.I.get<ISnackbarService>();
    snackbarService.showSnackbar_();

    providerContainer.read(globalLoaderOverlayProvider.notifier).showLoader();
    return _movementsRepository.getMovementsList();
  }
}