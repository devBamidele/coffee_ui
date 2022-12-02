import 'package:coffee_ui/utils/coffee_type.dart';
import 'package:coffee_ui/utils/constants.dart';
import 'package:coffee_ui/utils/sample_data.dart';
import 'package:coffee_ui/utils/widget_functions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/coffee_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // User tapped on coffee types
  coffeeTypeSelected(int index) {
    setState(() {
      for (int num = 0; num < coffeeTypes.length; num++) {
        coffeeTypes[num][1] = false;
      }
      coffeeTypes[index][1] = true;
    });
  }

  late FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    myFocusNode.dispose();
    super.dispose();
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
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_rounded),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
            ),
          ],
        ),
        body: SafeArea(
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              scrollbars: false,
              physics: const BouncingScrollPhysics(),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: pageSpacing),
                    child: TextField(
                      focusNode: myFocusNode,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 18, right: 18),
                          child: Icon(
                            Icons.coffee_rounded,
                            color: myFocusNode.hasPrimaryFocus
                                ? colorSec
                                : borderColor,
                          ),
                        ),
                        hintText: 'Find your coffee...',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: pageSpacing),
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
                            onTap: () {
                              coffeeTypeSelected(index);
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 305,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: coffeeTiles.length,
                      itemBuilder: (BuildContext context, int index) {
                        Map<String, dynamic> item = coffeeTiles[index];
                        return CoffeeTile(
                          path: item['path'],
                          price: item['price'],
                          extras: item['extras'],
                          coffee: item['coffee'],
                          rating: item['rating'],
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
