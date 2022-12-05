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
                          const Text(
                            '5 Coffee Beans You Must Try',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                            overflow: TextOverflow.fade,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13),
                              ),
                              fixedSize: const Size(130, 37),
                              primary: colorSecondaryVariant,
                              elevation: 8,
                              shadowColor:
                                  colorSecondaryVariant.withOpacity(0.4),
                            ),
                            child: const Text(
                              'Explore',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          )
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
