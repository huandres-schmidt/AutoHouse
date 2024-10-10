import 'package:flutter/material.dart';
import 'package:teste/core/constants/colors.dart';

/// Tema do Aplicativo
class AppTheme{
  static ThemeData themeData(){
    return ThemeData(
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      useMaterial3: false,
      primaryColor: ColorsContants.corquenaoseionome,
      appBarTheme: AppBarTheme(
        color: ColorsContants.corquenaoseionome,
        toolbarHeight: 0.0,
      ),
    );
  }
}