import 'package:coffee_ui/utils/constants.dart';
import 'package:flutter/material.dart';

class MyTheme {
  ThemeData themeData = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: colorBackground,
    primarySwatch: Colors.orange,
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: inputBorder,
      enabledBorder: inputBorder,
    ),
  );
}
