import 'package:coffee_ui/utils/constants.dart';
import 'package:flutter/material.dart';

class MyTheme {
  ThemeData themeData = ThemeData(
    useMaterial3: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.dark,
    textTheme: textThemeDefault,
    scaffoldBackgroundColor: colorPrimary,
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
