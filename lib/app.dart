import 'package:flutter/material.dart';
import 'package:teste/injector.dart';

import 'config/routes.dart';
import 'config/theme.dart';

class AutoHouseApp extends StatefulWidget {
  const AutoHouseApp({super.key, required this.injector});

  final Injector injector;

  @override
  State<AutoHouseApp> createState() => _AutoHouseAppState();
}

class _AutoHouseAppState extends State<AutoHouseApp> {
  late final Injector _injector;

  @override
  void initState() {
    super.initState();
    _injector = widget.injector;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AutoHouse',
      theme: AppTheme.themeData(),
      onGenerateRoute: (settings) => Routes.router(settings, _injector),
      initialRoute: AppRoutes.login.route,
    );
  }
}
