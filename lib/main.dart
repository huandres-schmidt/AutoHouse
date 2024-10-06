import 'package:flutter/material.dart';
import 'package:teste/config/theme.dart';
import 'package:teste/presentation/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.themeData(),
      home: const HomeScreen(),
    );
  }
}
