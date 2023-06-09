import 'package:auto_route/auto_route.dart';
import 'package:blur/blur.dart';
import 'package:coffee_ui/app_router/router.gr.dart';
import 'package:coffee_ui/utils/custom_functions.dart';
import 'package:coffee_ui/utils/widget_functions.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({
    Key? key,
    required this.path,
    required this.price,
    required this.coffee,
    required this.extras,
    required this.rating,
    required this.index,
  }) : super(key: key);

  final String path;
  final num price;
  final num rating;
  final String coffee;
  final String extras;
  final int index;

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
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
                        GestureDetector(
                          onTap: () => context.router.push(
                            SecondPageRoute(index: index),
                          ),
                          child: SizedBox(
                            height: 180,
                            width: double.maxFinite,
                            child: Image.asset(
                              path,
                              fit: BoxFit.fitWidth,
                            ),
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
                                  style: themeData.textTheme.caption,
                                )
                              ],
                            ),
                          ).frosted(
                            blur: 3,
                            frostColor: Colors.transparent,
                            width: 70,
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
                        style: themeData.textTheme.headlineSmall,
                      ),
                      addVerticalSpace(3),
                      Text(
                        extras,
                        style: themeData.textTheme.bodyText2,
                      ),
                      addVerticalSpace(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: '\$',
                                  style: themeData.textTheme.overline,
                                ),
                                TextSpan(
                                  text: formatCurrency(price),
                                  style: themeData.textTheme.headline6,
                                ),
                              ],
                            ),
                          ),
                          Material(
                            color: colorSec,
                            borderRadius: BorderRadius.circular(13),
                            elevation: 5,
                            shadowColor: colorSecondaryVariant,
                            child: const SizedBox(
                              height: 34,
                              width: 34,
                              child: Icon(
                                Icons.add,
                                size: 22,
                              ),
                            ),
                          ),
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
