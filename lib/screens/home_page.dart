import 'package:coffee_ui/utils/coffee_type.dart';
import 'package:coffee_ui/utils/constants.dart';
import 'package:coffee_ui/utils/widget_functions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/coffee_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_rounded),
                    hintText: 'Find your coffee...',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: pageSpacing),
                child: SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      CoffeeType(
                        coffeeType: 'Cappuccino',
                        selected: true,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 320,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CoffeeTile(),
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
