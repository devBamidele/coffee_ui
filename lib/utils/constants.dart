import 'package:flutter/material.dart';

const colorPrimary = Color(0xff0C0F14);
final borderColor = Colors.grey.shade600;
const colorLightGrey = Color(0xff262B33);
const colorSec = Color(0xffD17842);
const colorPrimaryVariant = Color(0xff101419);
const colorSecondaryVariant = Color(0xffD07741);
const buttonColor = Color(0xff141921);

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

final buttonShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(12),
);
