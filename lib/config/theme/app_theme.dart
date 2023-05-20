import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49149F);
const List<Color> _colorThemes = [
  _customColor,
  Colors.teal,
  Colors.blue,
  Colors.pink,
  Colors.green,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < _colorThemes.length - 1,
            'Color out of range');
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}
