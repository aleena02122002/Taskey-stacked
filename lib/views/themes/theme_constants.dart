import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
);

class ThemeManager with ChangeNotifier{
  ThemeMode _themeMode = ThemeMode.light;

  get themeMode => _themeMode;

  toggleTheme (bool isDark){
    _themeMode = isDark?ThemeMode.dark:ThemeMode.light;
  }
}