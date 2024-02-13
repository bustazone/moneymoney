import './view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MovementListFilterScreen extends ConsumerWidget {

  const MovementListFilterScreen(
      {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MovementListFilterScreenView(
      onSave: () {
      },
      onCancel: () {
      },
    );
  }
}
