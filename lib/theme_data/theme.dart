import 'package:coffee_ui/utils/constants.dart';
import 'package:flutter/material.dart';

class MyTheme {
  ThemeData themeData = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: colorBackground,
    inputDecorationTheme: InputDecorationTheme(
      // prefixIconColor: colorSec,
      focusedBorder: inputBorder.copyWith(
        borderSide: const BorderSide(
          color: Colors.white60,
          width: 1.5,
        ),
      ),
      enabledBorder: inputBorder,
    ),
  );
}
