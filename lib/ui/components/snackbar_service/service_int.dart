import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:moneymoney/common/servicies/secure_storage/secure_storage_service_int.dart';
import 'package:moneymoney/core/movement/domain/models/movement.dart';
import 'package:moneymoney/ui/components/dialog_overlay/provider.dart';

abstract class ISnackbarService {
  void showSnackbar_();
  void hideSnackbar_();
}
