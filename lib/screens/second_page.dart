import 'package:auto_route/auto_route.dart';
import 'package:blur/blur.dart';
import 'package:coffee_ui/data/sample_data.dart';
import 'package:coffee_ui/utils/components/app_bar_button.dart';
import 'package:coffee_ui/utils/components/coffee_specifics.dart';
import 'package:coffee_ui/utils/components/custom_elevated_button.dart';
import 'package:coffee_ui/utils/components/size_tabs.dart';
import 'package:coffee_ui/utils/constants.dart';
import 'package:coffee_ui/utils/custom_functions.dart';
import 'package:coffee_ui/utils/widget_functions.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:readmore/readmore.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key? key,
    required this.index,
  }) : super(key: key);

  static const tag = '/secondPage';

  final int index;

  Future<void> refresh() async {
    return Future.delayed(
      const Duration(seconds: 3),
      () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> item = coffeeTiles[index];
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: RefreshIndicator(
            color: colorSec,
            backgroundColor: colorLightGrey,
            onRefresh: () => refresh(),
            child: ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(
                scrollbars: false,
                physics: const BouncingScrollPhysics(),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 470,
                      child: ClipRRect(
                        // The Rectangle clipping the image
                        borderRadius: circularBorder2,
                        child: Stack(
                          children: [
                            SizedBox(
                              width: double.maxFinite,
                              child: Image.asset(
                                item['path'],
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: SizedBox(
                                child: Padding(
                                  padding: EdgeInsets.all(pageSpacing),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            item['coffee'],
                                            style: themeData.textTheme.headline5
                                                ?.copyWith(
                                              fontSize: 23,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          addVerticalSpace(7),
                                          Text(
                                            item['extras'],
                                            style: TextStyle(
                                              color: Colors.grey[400],
                                              fontSize: 17,
                                            ),
                                          ),
                                          addVerticalSpace(17),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.star_rate_rounded,
                                                size: 28,
                                                color: colorSec,
                                              ),
                                              addHorizontalSpace(10),
                                              RichText(
                                                text: TextSpan(
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: item['rating']
                                                          .toString(),
                                                      style: const TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      DefaultTextStyle(
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white.withOpacity(0.7),
                                        ),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                CoffeeSpecifics(
                                                  text: item['ingredients'][0],
                                                  child: Image.asset(
                                                    'assets/icons/beans.png',
                                                    color:
                                                        colorSecondaryVariant,
                                                    height: 22,
                                                  ),
                                                ),
                                                addHorizontalSpace(15),
                                                CoffeeSpecifics(
                                                  text: item['ingredients'][1],
                                                  child: const Icon(
                                                    Icons.water_drop_rounded,
                                                    color:
                                                        colorSecondaryVariant,
                                                    size: 22,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            addVerticalSpace(15),
                                            Container(
                                              alignment: Alignment.center,
                                              // padding: const EdgeInsets.all(5),
                                              height: 40,
                                              width: 122,
                                              decoration: BoxDecoration(
                                                color: colorPrimaryVariant,
                                                borderRadius:
                                                    BorderRadius.circular(13),
                                              ),
                                              child: const Text(
                                                'Medium Roasted',
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ).frosted(
                                height: 147,
                                width: double.maxFinite,
                                blur: 7,
                                frostColor: Colors.transparent,
                                borderRadius: circularBorder2,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: GestureDetector(
                                onTap: () => context.router.pop(),
                                child: const AppBarButton(
                                  left: 12,
                                  child: Icon(
                                    Icons.arrow_back_ios_new_rounded,
                                    size: 21,
                                    color: colorGrey,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: AppBarButton(
                                right: 12,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 3.5),
                                  child: LikeButton(
                                    likeBuilder: (bool isLiked) {
                                      return Icon(
                                        isLiked
                                            ? Icons.favorite_rounded
                                            : Icons.favorite_rounded,
                                        color: isLiked
                                            ? colorSecondaryVariant
                                            : colorGrey,
                                        size: 22,
                                      );
                                    },
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Description',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white.withOpacity(0.7),
                            ),
                          ),
                          addVerticalSpace(15),
                          ReadMoreText(
                            item['description'],
                            style: TextStyle(
                              fontSize: 17,
                              wordSpacing: 1.2,
                              height: 1.45,
                              color: Colors.white.withOpacity(0.85),
                            ),
                            trimLength: 80,
                            trimCollapsedText: 'Read more',
                            trimExpandedText: 'Read less',
                            moreStyle: const TextStyle(
                              fontSize: 16,
                              wordSpacing: 1.2,
                              height: 1.1,
                              fontWeight: FontWeight.w500,
                              color: colorSecondaryVariant,
                            ),
                          ),
                          addVerticalSpace(25),
                          Text(
                            'Size',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white.withOpacity(0.7),
                            ),
                          ),
                          addVerticalSpace(10),
                          const SizeTabs(),
                          addVerticalSpace(32),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Price',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white.withOpacity(0.8),
                                    ),
                                  ),
                                  addVerticalSpace(2),
                                  RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        const TextSpan(
                                          text: '\$ ',
                                          style: TextStyle(
                                            color: colorSec,
                                            fontSize: 25,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        TextSpan(
                                          text: formatCurrency(item['price']),
                                          style: const TextStyle(fontSize: 21),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              CustomElevatedButton(
                                onPressed: () {},
                                size: const Size(230, 50),
                                borderRadius: 18,
                                child: const Text(
                                  'Buy Now',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
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
        ),
      ),
    );
  }
}
