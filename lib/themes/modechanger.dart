import 'package:flutter/material.dart';
import 'package:juliodejuls/exporT.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _cambiar = darkTheme;
  ThemeData get themeData => _cambiar;
  set themeData(ThemeData themeData) {
    _cambiar = themeData;
    notifyListeners();
  }

  void toggleMode() {
    _cambiar = _cambiar == darkTheme ? lightTheme : darkTheme;
    notifyListeners();
  }
}
