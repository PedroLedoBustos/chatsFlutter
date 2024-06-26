import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49149F);
const List<Color> _colorThemes= [
  _customColor,
  Colors.blue,
  Colors.red,
  Colors.yellow,
  Colors.orange,
  Colors.green,
  Colors.brown,
];
class AppTheme{
  final int selectedColor;

  AppTheme({
     this.selectedColor=0
     }): assert(selectedColor>=0 && selectedColor <= _colorThemes.length-1, 'Colores entre el 0 ${_colorThemes.length-1}');

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}