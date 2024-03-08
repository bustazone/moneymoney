import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:moneymoney/common/servicies/secure_storage/secure_storage_service_int.dart';
import 'package:moneymoney/core/movement/domain/models/movement.dart';
import 'package:moneymoney/ui/components/dialog_overlay/provider.dart';
import 'package:moneymoney/ui/components/global_loader/provider.dart';

class GlobalLoaderOverlay extends ConsumerWidget {
  const GlobalLoaderOverlay(
      {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final globalLoaderOverlayProvider_ = ref.watch(globalLoaderOverlayProvider);
    if (globalLoaderOverlayProvider_ > 0) {
      return Center(child: Container(key: const Key('loader'), color: const Color.fromRGBO(100, 100, 100, 0.4), child: Container(color: Colors.red, height: 200, width: 200,),));
    } else {
      return Container();
    }
  }
}
