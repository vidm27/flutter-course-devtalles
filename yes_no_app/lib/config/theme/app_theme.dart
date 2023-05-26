import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49149F); // colcar colores hexacimal

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.green,
  Colors.orange,
  Colors.pink,
  Colors.purple,
  Colors.red,
];

class AppTheme {
  final int selectColor;

  AppTheme({this.selectColor = 0}):
  assert(selectColor >= 0 && selectColor <= _colorThemes.length - 1, 'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(useMaterial3: true,
    colorSchemeSeed: _colorThemes[selectColor]);
  }
}
