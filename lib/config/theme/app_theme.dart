import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49149F);
const Color _customColorOlive = Color(0xFF4F5504);

const List<Color> _colorTheme = [
  _customColor,
  _customColorOlive,
  Colors.blue,
  Colors.lime,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    // required this.selectedColor //
    this.selectedColor = 0,
  }):assert(selectedColor>=0 && selectedColor<=_colorTheme.length-1,'el valor de SelecteColor debe estar entre 0 y ${_colorTheme.length}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTheme[selectedColor],
    );
  }
}
