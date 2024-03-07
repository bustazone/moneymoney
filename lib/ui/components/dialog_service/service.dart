import 'package:flutter/material.dart';
import 'package:moneymoney/ui/components/dialog_service/service_int.dart';

class DialogService implements IDialogService {
  final GlobalKey<NavigatorState> navKey;

  DialogService({
    required this.navKey,
  });

  @override
  void showDialog_(Widget widget, {bool dismissible = false}) {
    final navigationContext = navKey.currentContext;
    if (navigationContext != null) {
      showDialog(
        context: navigationContext, 
        useSafeArea: true,
        barrierDismissible: dismissible,
        builder: (context) => widget,
      );
    }
  }

  @override
  void hideDialog_() {
    final navigationContext = navKey.currentContext;
    if (navigationContext != null) {
      Navigator.of(navigationContext).pop();
    }
  }
}
