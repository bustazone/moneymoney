import './view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MovementListScreen extends ConsumerWidget {

  const MovementListScreen(
      {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MovementListScreenView(
      onFilter: () {
      },
      onNew: () {
      },
      onEdit: () {
      },
    );
  }
}
