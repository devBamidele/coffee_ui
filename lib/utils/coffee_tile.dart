import 'package:blur/blur.dart';
import 'package:coffee_ui/utils/custom_functions.dart';
import 'package:coffee_ui/utils/widget_functions.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({
    Key? key,
    required this.path,
    required this.price,
    required this.coffee,
    required this.extras,
  }) : super(key: key);

  final String path;
  final num price;
  final String coffee;
  final String extras;

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
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff262B33),
                colorBackground,
              ],
            ),
          ),
          padding: const EdgeInsets.all(12),
          width: 190,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                // The Rectangle clipping the image
                borderRadius: BorderRadius.circular(18),
                child: Stack(
                  children: [
                    SizedBox(
                      height: 180,
                      width: double.maxFinite,
                      child: Image.asset(
                        path,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: SizedBox(
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star_rate_rounded,
                              size: 21,
                              color: colorSec,
                            ),
                            addHorizontalSpace(2.5),
                            const Text(
                              '4.2',
                              style: TextStyle(
                                fontSize: 13.5,
                                fontWeight: FontWeight.w800,
                              ),
                            )
                          ],
                        ),
                      ).frosted(
                        blur: 3,
                        frostColor: Colors.transparent,
                        width: 68,
                        height: 27,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                        ),
                        padding: const EdgeInsets.only(left: 10),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      coffee,
                      style: const TextStyle(
                        fontSize: 20.5,
                      ),
                    ),
                    addVerticalSpace(4),
                    Text(
                      extras,
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
                    Text(
                      formatCurrency(price, decimalCount: 2),
                      style: const TextStyle(fontSize: 17),
                    ),
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        color: colorSec,
                        borderRadius: BorderRadius.circular(10),
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
