import 'package:coffee_ui/utils/constants.dart';
import 'package:flutter/material.dart';

class OutlinedSizeButton extends StatelessWidget {
  const OutlinedSizeButton({
    Key? key,
    required this.onPressed,
    required this.word,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String word;

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: buttonShape,
        fixedSize: buttonSize,
        side: const BorderSide(
          width: 1.75,
          color: colorSecondaryVariant,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        word,
        style: themeData.textTheme.headline4?.copyWith(
          fontWeight: FontWeight.bold,
          color: colorSecondaryVariant,
        ),
      ),
    );
  }
}
