import 'package:flutter/material.dart';

const colorBackground = Color(0xff0C0F14);
final borderColor = Colors.grey.shade600;
const colorLightGrey = Color(0xff262B33);
const colorSec = Color(0xffD17842);

double pageSpacing = 20;
double borderRadius = 22;

final inputBorder = OutlineInputBorder(
  borderSide: BorderSide(color: borderColor),
  borderRadius: const BorderRadius.all(
    Radius.circular(10),
  ),
);

final circularBorder = BorderRadius.circular(borderRadius);

const tileDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      colorLightGrey,
      colorBackground,
    ],
  ),
);
