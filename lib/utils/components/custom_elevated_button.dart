import 'package:coffee_ui/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.child,
    required this.size,
    this.elevation = 8,
    required this.onPressed,
    required this.borderRadius,
  }) : super(key: key);

  final Widget child;
  final Size size;
  final double elevation;
  final double borderRadius;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        fixedSize: size,
        primary: colorSecondaryVariant,
        elevation: elevation,
        shadowColor: colorSecondaryVariant.withOpacity(0.5),
      ),
      child: child,
    );
  }
}
