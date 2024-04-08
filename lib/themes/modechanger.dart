import 'package:flutter/material.dart';
import 'package:juliodejuls/exporT.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _cambiar = lightTheme;
  ThemeData get themeData => _cambiar;
  set themeData(ThemeData themeData) {
    themeData = _cambiar;
    notifyListeners();
  }

  void toggleMode() {
    _cambiar == lightTheme ? darkTheme : lightTheme;
  }
}
