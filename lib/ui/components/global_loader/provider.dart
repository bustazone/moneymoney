import 'package:flutter_riverpod/flutter_riverpod.dart';

final globalLoaderOverlayProvider = NotifierProvider<GlobalLoaderOverlayNotifier, int> (GlobalLoaderOverlayNotifier.new);

class GlobalLoaderOverlayNotifier extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  void showLoader({int timeoutSeconds = 0}) {
    state = state + 1;
    if (timeoutSeconds > 0) {
      Future.delayed(Duration(seconds: timeoutSeconds), () {
        hideLoader();
      });
    }
  }

  void hideLoader() {
    state = state <= 0 ? 0 : state - 1;
  }

  void forceHideLoader() {
    state = 0;
  }

}