import 'package:flutter/material.dart';
import 'package:yes_no_app/config/colors/color_schemes.dart';

const Color _customColor = Color(0xFF49149F);
const List<Color> _colorTheme = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  // final int selectColor;
  final bool darkTheme;
  AppTheme({required this.darkTheme});
  // AppTheme({this.selectColor = 0})
  //     : assert(selectColor >= 0 && selectColor <= _colorTheme.length - 1,
  //           'Colors must be between 0 and ${_colorTheme.length}');
  ThemeData theme() {
    // return ThemeData(
    //     useMaterial3: true, colorSchemeSeed: _colorTheme[selectColor], );
    return ThemeData(
        useMaterial3: true,
        colorScheme: !darkTheme ? lightColorScheme : darkColorScheme);
  }
}
