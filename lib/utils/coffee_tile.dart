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
    required this.rating,
  }) : super(key: key);

  final String path;
  final num price;
  final num rating;
  final String coffee;
  final String extras;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: pageSpacing,
        right: 5,
      ),
      child: ClipRRect(
        // The most exterior rectangle
        borderRadius: circularBorder,
        child: Container(
          decoration: tileDecoration,
          width: 190,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Material(
                  elevation: 8,
                  borderRadius: circularBorder,
                  child: ClipRRect(
                    // The Rectangle clipping the image
                    borderRadius: circularBorder,
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
                                Text(
                                  rating.toString(),
                                  style: const TextStyle(
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
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        coffee,
                        style: const TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      addVerticalSpace(4),
                      Text(
                        extras,
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                      addVerticalSpace(14),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                const TextSpan(
                                  text: '\$ ',
                                  style: TextStyle(
                                    color: colorSec,
                                    fontSize: 19.5,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(
                                  text: formatCurrency(price),
                                  style: const TextStyle(fontSize: 18.5),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 34,
                            width: 34,
                            decoration: BoxDecoration(
                              color: colorSec,
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: const Icon(
                              Icons.add,
                              size: 22,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
