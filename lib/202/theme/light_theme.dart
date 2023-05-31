import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightColor();
  late ThemeData theme;

  LightTheme() {
    theme = ThemeData(
        appBarTheme: const AppBarTheme(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)))),
        scaffoldBackgroundColor: Colors.white.withOpacity(0.94),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Colors.green),
        buttonTheme: ButtonThemeData(
            colorScheme: ColorScheme.light(onPrimary: Colors.purple, onSecondary: _lightColor.blueMania)),
        colorScheme: const ColorScheme.light(),
        checkboxTheme: const CheckboxThemeData(
            fillColor: MaterialStatePropertyAll(Colors.green), side: BorderSide(color: Colors.green)),
        textTheme:
            ThemeData.light().textTheme.copyWith(titleMedium: TextStyle(fontSize: 25, color: _lightColor._textColor)));
  }
}

class _LightColor {
  final Color _textColor = const Color.fromARGB(255, 102, 23, 23);
  final Color blueMania = const Color.fromRGBO(95, 188, 248, 1);
}
