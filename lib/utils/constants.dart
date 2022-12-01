import 'package:flutter/material.dart';

const colorBackground = Color(0xff0C1015);
final borderColor = Colors.grey.shade600;

double pageSpacing = 20;

final inputBorder = OutlineInputBorder(
  borderSide: BorderSide(color: borderColor),
  borderRadius: const BorderRadius.all(
    Radius.circular(10),
  ),
);
