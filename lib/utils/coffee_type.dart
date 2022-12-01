import 'package:coffee_ui/utils/constants.dart';
import 'package:flutter/material.dart';

class CoffeeType extends StatefulWidget {
  const CoffeeType({
    Key? key,
    required this.coffeeType,
    required this.selected,
  }) : super(key: key);

  final String coffeeType;
  final bool selected;

  @override
  State<CoffeeType> createState() => _CoffeeTypeState();
}

class _CoffeeTypeState extends State<CoffeeType> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          //selected = !widget.selected;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Center(
          child: Text(
            widget.coffeeType,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: widget.selected ? Colors.orangeAccent : borderColor,
            ),
          ),
        ),
      ),
    );
  }
}
