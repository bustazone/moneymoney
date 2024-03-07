import 'package:get_it/get_it.dart';
import 'package:moneymoney/common/overlay/overlay_custom_controller.dart';
import 'package:moneymoney/core/movement/domain/models/movement.dart';
import 'package:moneymoney/core/movement/domain/use_cases/GetMovementsUseCase.dart';
import 'package:moneymoney/ui/state/movements_providers.dart';

import './view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MovementListScreen extends ConsumerWidget {
  const MovementListScreen(
      {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _movementsProvider = ref.watch(movementsProvider);
    return MovementListScreenView(
      movements: _movementsProvider.asData?.value ?? [],
      onFilter: () async {
        // GetIt.I.get<OverlayCustomController>(instanceName: 'GlobalLoader').showTemporary(seconds: 3);
        List<Movement> l = await GetIt.I.get<GetMovementdUseCase>()();
        ref.read(movementsProvider.notifier).addList(l);
      },
      onNew: () {
      },
      onEdit: () {
      },
    );
  }
}
