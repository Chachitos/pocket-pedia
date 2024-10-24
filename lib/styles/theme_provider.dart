import 'package:flutter/material.dart';
import 'package:pocketpedia/styles/dark_theme.dart';
import 'package:pocketpedia/styles/light_theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightTheme;
  ThemeData get themeData => _themeData;
  bool get isDarkMode => _themeData == darkTheme;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
  if (_themeData == lightTheme) {
    themeData = darkTheme; // Aquí usamos el setter para notificar a los listeners
  } else {
    themeData = lightTheme; // Aquí también
  }
}

}
