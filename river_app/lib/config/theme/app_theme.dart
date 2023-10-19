
import 'package:flutter/material.dart';

const _seedColor = Color.fromARGB(255, 7, 80, 59);

class AppTheme {

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: _seedColor,
    listTileTheme: const ListTileThemeData(
      iconColor: _seedColor
    )
  );
}