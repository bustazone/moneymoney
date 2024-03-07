import 'package:flutter/material.dart';
import 'package:moneymoney/common/iot/injector_conf.dart';
import 'package:moneymoney/ui/app.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const App());
}


