import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:moneymoney/common/servicies/secure_storage/secure_storage_service_int.dart';
import 'package:moneymoney/core/movement/domain/models/movement.dart';

final movementsProvider = AsyncNotifierProvider<MovementsNotifier, List<Movement>> (MovementsNotifier.new);

class MovementsNotifier extends AsyncNotifier<List<Movement>> {
  @override
  FutureOr<List<Movement>> build() {
    return _rehydrateProviderData();
  }

  FutureOr<List<Movement>> _rehydrateProviderData() async {
    String value = await GetIt.I.get<ISecureStorageService>().read(key: 'movements', defaultValue: '[]');
    return Movement.fromJsonListString(value);
  }

  void _persistProviderData() {
    GetIt.I.get<ISecureStorageService>().write(key: 'movements', value: jsonEncode(state.valueOrNull));
  }

  void addMovement(Movement movement) {
    state = AsyncValue.data([...state.valueOrNull ?? [], movement]);
    _persistProviderData();
  }

  void fillList(List<Movement> movement) async {
    state = AsyncValue.data(movement);
    _persistProviderData();
  }

  void addList(List<Movement> movements) async {
    state = AsyncValue.data([...state.value!, ...movements]);
    _persistProviderData();
  }
}