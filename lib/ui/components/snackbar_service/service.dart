import 'package:flutter/material.dart';
import 'package:moneymoney/ui/components/dialog_service/service_int.dart';
import 'package:moneymoney/ui/components/snackbar_service/service_int.dart';

class SnackbarService implements ISnackbarService {
  final GlobalKey<ScaffoldMessengerState> scaffoldKey;

  SnackbarService({
    required this.scaffoldKey,
  });

  @override
  void showSnackbar_() {
    final scaffoldState = scaffoldKey.currentState;
    if (scaffoldState != null) {
      SnackBar snackBar = const SnackBar(content: Text('ddddd'));
      scaffoldState.showSnackBar(snackBar);
    }
  }

  @override
  void hideSnackbar_() {
    final scaffoldContext = scaffoldKey.currentContext;
    if (scaffoldContext != null) {
      ScaffoldMessenger.of(scaffoldContext).hideCurrentSnackBar();
    }
  }
}
