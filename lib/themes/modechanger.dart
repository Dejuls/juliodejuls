import 'package:flutter/material.dart';
import 'package:juliodejuls/exporT.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _cambiar = lightTheme;
  ThemeData get themeData => _cambiar;
  set themeData(ThemeData themeData) {
    _cambiar = themeData;
    notifyListeners();
  }

  void toggleMode() {
    _cambiar = _cambiar == lightTheme ? darkTheme : lightTheme;
    notifyListeners();
  }
}
