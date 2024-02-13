import './view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MovementEditScreen extends ConsumerWidget {
  final String id;

  const MovementEditScreen(
      {required this.id,
      super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MovementEditScreenView(
      id: id,
      onSave: () {
      },
      onCancel: () {
      },
    );
  }
}
