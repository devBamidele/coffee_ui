import 'package:coffee_ui/utils/constants.dart';
import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  const CoffeeType({
    Key? key,
    required this.coffeeType,
    required this.selected,
    required this.onTap,
  }) : super(key: key);

  final String coffeeType;
  final VoidCallback onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Center(
          child: Text(
            coffeeType,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: selected ? Colors.orangeAccent : borderColor,
            ),
          ),
        ),
      ),
    );
  }
}
