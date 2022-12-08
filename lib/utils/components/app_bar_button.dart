import 'package:coffee_ui/utils/constants.dart';
import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({
    Key? key,
    required this.child,
    this.top = 25,
    this.right = 0,
    this.left = 0,
    this.bottom = 0,
  }) : super(key: key);

  final Widget child;
  final double top, right, left, bottom;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: top,
        right: right,
        left: left,
        bottom: bottom,
      ),
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          gradient: tileDecoration.gradient,
          borderRadius: BorderRadius.circular(12),
        ),
        child: child,
      ),
    );
  }
}
