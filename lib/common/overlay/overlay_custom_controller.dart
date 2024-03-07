import 'package:flutter/material.dart';

class OverlayCustomController extends OverlayPortalController{
  void showTemporary({int seconds = 0}) {
    show();
    if (seconds > 0) {
      Future.delayed(Duration(seconds: seconds), () {
        hide();
      });
    }
  }
}