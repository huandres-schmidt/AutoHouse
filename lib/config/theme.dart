import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teste/core/constants/colors.dart';

/// Tema do Aplicativo
class AppTheme {
  static ThemeData themeData() {
    return ThemeData(
      scaffoldBackgroundColor: ColorsContants.backgroundColor,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      useMaterial3: false,
      primaryColor: ColorsContants.corquenaoseionome,
      appBarTheme: AppBarTheme(
        color: ColorsContants.corquenaoseionome,
        toolbarHeight: 0.0,
        elevation: 0.0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.chakraPetch(fontSize: 20),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(
            ColorsContants.corquenaoseionome,
          ),
          textStyle: WidgetStatePropertyAll(
            GoogleFonts.chakraPetch(
              color: Colors.grey,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.chakraPetch(),
        bodyMedium: GoogleFonts.chakraPetch(),
        bodySmall: GoogleFonts.chakraPetch(),
        displayLarge: GoogleFonts.chakraPetch(),
        displayMedium: GoogleFonts.chakraPetch(),
        displaySmall: GoogleFonts.chakraPetch(),
        headlineLarge: GoogleFonts.chakraPetch(),
        headlineMedium: GoogleFonts.chakraPetch(),
        headlineSmall: GoogleFonts.chakraPetch(),
        labelLarge: GoogleFonts.chakraPetch(),
        labelMedium: GoogleFonts.chakraPetch(),
        labelSmall: GoogleFonts.chakraPetch(),
        titleLarge: GoogleFonts.chakraPetch(),
        titleMedium: GoogleFonts.chakraPetch(),
        titleSmall: GoogleFonts.chakraPetch(),
      )
    );
  }
}
