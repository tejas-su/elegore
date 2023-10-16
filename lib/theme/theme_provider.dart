import 'package:elegore/theme/theme_data.dart';
import 'package:flutter/material.dart';

class Themeprovider extends ChangeNotifier {
  ThemeData _themeData = darkMode;

  ThemeData get themedata => _themeData;

  set themedata(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      themedata = darkMode;
    } else {
      themedata = lightMode;
    }
  }
}
