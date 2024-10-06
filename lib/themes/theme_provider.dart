import 'package:flutter/material.dart';
import'package:delivery_app/themes/dark.dart';
import'package:delivery_app/themes/light.dart';


class ThemeProvider with ChangeNotifier{

  ThemeData _themeData = darkMode;

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkMode;

  set themeData (ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme () {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}