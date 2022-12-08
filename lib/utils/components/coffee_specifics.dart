import 'package:coffee_ui/utils/constants.dart';
import 'package:coffee_ui/utils/widget_functions.dart';
import 'package:flutter/material.dart';

class CoffeeSpecifics extends StatelessWidget {
  const CoffeeSpecifics({
    Key? key,
    required this.child,
    this.dimension = 52,
    required this.text,
    this.border = 13,
  }) : super(key: key);

  final String text;
  final Widget child;
  final double dimension;
  final double border;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: dimension,
      width: dimension,
      decoration: BoxDecoration(
        color: colorPrimaryVariant,
        borderRadius: BorderRadius.circular(border),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          child,
          addVerticalSpace(2),
          Text(text),
        ],
      ),
    );
  }
}
