import 'package:coffee_ui/utils/widget_functions.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: pageSpacing,
        right: pageSpacing,
        bottom: 15,
      ),
      child: ClipRRect(
        // The most exterior rectangle
        borderRadius: BorderRadius.circular(18),
        child: Container(
          padding: const EdgeInsets.all(12),
          width: 190,
          color: Colors.black54,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                // The Rectangle clipping the image
                borderRadius: BorderRadius.circular(18),
                child: SizedBox(
                  height: 180,
                  width: double.maxFinite,
                  child: Image.asset(
                    'assets/images/coffee1.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Cappuccino',
                      style: TextStyle(fontSize: 20),
                    ),
                    addVerticalSpace(4),
                    Text(
                      'With out milk',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '\$4.00',
                      style: TextStyle(fontSize: 17),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Icon(
                        Icons.add,
                        size: 22,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
