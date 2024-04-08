import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    primary: Colors.white,
    secondary: Colors.grey[700]!,
    background: Colors.grey[800]!,
  ),
);
ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.grey[200]!,
    primary: Color(0xff985a56),
    secondary: Colors.white70,
    tertiary: Colors.grey[200]!,
  ),
);
