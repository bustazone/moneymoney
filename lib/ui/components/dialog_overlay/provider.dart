import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dialogProvider = NotifierProvider<DialogNotifier, Widget?> (DialogNotifier.new);

class DialogNotifier extends Notifier<Widget?> {
  @override
  Widget? build() {
    return null;
  }

  void showDialog(Widget dialog, {int seconds = 0}) {
    state = dialog;
    if (seconds > 0) {
      Future.delayed(Duration(seconds: seconds), () {
        hideDialog();
      });
    }
  }

  void hideDialog() {
    state = null;
  }

}