import 'package:coffee_ui/utils/components/custom_elevated_button.dart';
import 'package:coffee_ui/utils/constants.dart';
import 'package:flutter/material.dart';

class SpecialForYou extends StatelessWidget {
  const SpecialForYou({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: pageSpacing, vertical: pageSpacing),
      child: ClipRRect(
        // The most exterior rectangle
        borderRadius: circularBorder,
        child: Container(
          constraints: const BoxConstraints(
            maxHeight: 175,
            maxWidth: 410,
          ),
          decoration: tileDecoration,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 25),
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
                Flexible(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '5 Coffee Beans You Must Try',
                            style: themeData.textTheme.headline6?.copyWith(
                              fontSize: 20,
                            ),
                            overflow: TextOverflow.fade,
                          ),
                          CustomElevatedButton(
                            onPressed: () {},
                            size: const Size(130, 37),
                            borderRadius: 13,
                            child: const Text(
                              'Explore',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
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
