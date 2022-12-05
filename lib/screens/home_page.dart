import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:coffee_ui/data/sample_data.dart';
import 'package:coffee_ui/utils/components/coffee_type.dart';
import 'package:coffee_ui/utils/constants.dart';
import 'package:coffee_ui/utils/widget_functions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/components/coffee_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  List<TabItem> items = const [
    TabItem(
      icon: Icons.home_rounded,
      //title: 'Home',
    ),
    TabItem(
      icon: Icons.shopping_bag_rounded,
    ),
    TabItem(
      icon: Icons.favorite_rounded,
    ),
    TabItem(
      icon: Icons.person_rounded,
    ),
  ];

  // User tapped on coffee types
  coffeeTypeSelected(int index) {
    setState(() {
      for (int num = 0; num < coffeeTypes.length; num++) {
        coffeeTypes[num][1] = false;
      }
      coffeeTypes[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const Icon(Icons.menu_rounded),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.person),
            ),
          ],
        ),
        body: SafeArea(
          child: Stack(
            children: [
              ScrollConfiguration(
                behavior: ScrollConfiguration.of(context).copyWith(
                  scrollbars: false,
                  physics: const BouncingScrollPhysics(),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header Text
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: pageSpacing),
                        child: Text(
                          'Find the best coffee for you',
                          style: GoogleFonts.bebasNeue(
                            fontSize: 56,
                          ),
                        ),
                      ),
                      addVerticalSpace(pageSpacing),
                      // Text Field
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: pageSpacing),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding:
                                  const EdgeInsets.only(left: 18, right: 18),
                              child: Icon(
                                Icons.coffee_rounded,
                                color: borderColor,
                              ),
                            ),
                            hintText: 'Find your coffee...',
                          ),
                        ),
                      ),
                      // Coffee Types
                      Padding(
                        padding: EdgeInsets.only(bottom: pageSpacing, top: 30),
                        child: SizedBox(
                          height: 50,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: coffeeTypes.length,
                            itemBuilder: (BuildContext context, int index) {
                              List items = coffeeTypes[index];
                              return CoffeeType(
                                coffeeType: items[0],
                                selected: items[1],
                                onTap: () => coffeeTypeSelected(index),
                              );
                            },
                          ),
                        ),
                      ),
                      // Coffee Tiles
                      SizedBox(
                        height: 310,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: coffeeTiles.length,
                          itemBuilder: (BuildContext context, int index) {
                            Map<String, dynamic> item = coffeeTiles[index];
                            return CoffeeTile(
                              index: index,
                              path: item['path'],
                              price: item['price'],
                              extras: item['extras'],
                              coffee: item['coffee'],
                              rating: item['rating'],
                            );
                          },
                        ),
                      ),
                      // The 'Special for you text'
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: pageSpacing,
                          vertical: pageSpacing,
                        ),
                        child: const Text(
                          'Special for you',
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 25),
                  child: BottomBarFloating(
                    indexSelected: currentIndex,
                    colorSelected: const Color(0xffCF7742),
                    backgroundColor: const Color(0xff191D24),
                    borderRadius: circularBorder2,
                    items: items,
                    iconSize: 25,
                    paddingVertical: 20,
                    color: const Color(0xff4E5053),
                    onTap: (int index) => setState(() {
                      currentIndex = index;
                    }),
                    animated: true,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
