import 'package:flutter/material.dart';
import 'package:teste/app.dart';
import 'package:teste/injector.dart';

void main() async {
  final Injector injector = await _initializeApp();
  runApp(AutoHouseApp(injector: injector));
}

Future<Injector> _initializeApp() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  final Injector injector = await InjectorImpl.initializeDependencies();
  return injector;
}
