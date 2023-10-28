
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const _seedColor = Color.fromARGB(255, 7, 80, 59);

class AppTheme {

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: _seedColor,
    listTileTheme: const ListTileThemeData(
      iconColor: _seedColor
    ),
    textTheme: TextTheme(titleLarge: GoogleFonts.montserratAlternates(),
    titleMedium: GoogleFonts.russoOne(fontSize: 25))

  );
}