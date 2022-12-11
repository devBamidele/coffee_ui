import 'package:flutter/material.dart';

const colorPrimary = Color(0xff0C0F14);
final borderColor = Colors.grey.shade600;
const colorLightGrey = Color(0xff262B33);
const colorSec = Color(0xffD17842);
const colorPrimaryVariant = Color(0xff101419);
const colorSecondaryVariant = Color(0xffD07741);
const buttonColor = Color(0xff141921);
const colorGrey = Color(0xff4E5053);

double pageSpacing = 20;
double borderRadius = 22;
double borderRadius2 = 30;

const buttonSize = Size(100, 30);

final inputBorder = OutlineInputBorder(
  borderSide: BorderSide(color: borderColor),
  borderRadius: const BorderRadius.all(
    Radius.circular(10),
  ),
);

final circularBorder = BorderRadius.circular(borderRadius);
final circularBorder2 = BorderRadius.circular(borderRadius2);

const tileDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      colorLightGrey,
      colorPrimary,
    ],
  ),
);

final addButtonDecoration = BoxDecoration(
  color: colorSec,
  borderRadius: BorderRadius.circular(13),
  boxShadow: [
    BoxShadow(
      color: colorSecondaryVariant.withOpacity(0.35),
      spreadRadius: 1.2,
      blurRadius: 8,
      offset: const Offset(1, 3), // changes position of shadow
    ),
  ],
);

final buttonShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(12),
);

final TextTheme textThemeDefault = TextTheme(
  // The Header Text
  headline1: const TextStyle(
    fontFamily: 'Comfortaa',
    fontSize: 35,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  ),

  // The 'Extra's' text for the Category tile
  headline4: TextStyle(
    color: Colors.white.withOpacity(0.7),
    fontSize: 18,
  ),

  // The header text for the Category tile
  headline5: const TextStyle(
    fontFamily: 'Manrope',
    fontSize: 18.5,
    letterSpacing: 0.7,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  ),

  // The price text for the Category tile
  headline6: const TextStyle(
    fontSize: 18.7,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  ),

  // The 'Extra's' text for the Category tile
  bodyText2: TextStyle(
    color: Colors.white.withOpacity(0.7),
  ),

  // The Description text and not 'Description' itself
  subtitle1: TextStyle(
    fontFamily: 'Lexend',
    wordSpacing: 1.2,
    height: 1.45,
    color: Colors.white.withOpacity(0.8),
  ),

  // The Coffee Types ['Cappuccino', 'Latte', 'Espresso', 'Flat White']
  subtitle2: const TextStyle(
    fontFamily: 'Lexend',
    fontSize: 17,
    fontWeight: FontWeight.w500,
  ),

  // The style for the Rating Text
  caption: TextStyle(
    fontSize: 13.5,
    letterSpacing: 1,
    fontWeight: FontWeight.w800,
    color: Colors.white.withOpacity(0.9),
  ),

  // The style for the dollar sign
  overline: const TextStyle(
    color: colorSec,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  ),
);
