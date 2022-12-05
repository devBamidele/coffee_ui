import 'package:coffee_ui/utils/constants.dart';
import 'package:flutter/material.dart';

class SpecialForYou extends StatelessWidget {
  const SpecialForYou({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: pageSpacing, vertical: pageSpacing),
      child: ClipRRect(
        // The most exterior rectangle
        borderRadius: circularBorder,
        child: Container(
          height: 175,
          decoration: tileDecoration,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: ClipRRect(
                    borderRadius: circularBorder,
                    child: SizedBox(
                      width: 160,
                      height: double.maxFinite,
                      child: Image.asset(
                        'assets/images/coffee4.jpg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '5 Coffee beans you must',
                      style: TextStyle(fontSize: 19),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
