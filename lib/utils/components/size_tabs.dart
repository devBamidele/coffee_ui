import 'package:coffee_ui/utils/components/outline_size_button.dart';
import 'package:coffee_ui/utils/components/size_text_button.dart';
import 'package:coffee_ui/utils/constants.dart';
import 'package:coffee_ui/utils/widget_functions.dart';
import 'package:flutter/material.dart';

class SizeTabs extends StatefulWidget {
  const SizeTabs({
    Key? key,
  }) : super(key: key);

  @override
  State<SizeTabs> createState() => _SizeTabsState();
}

class _SizeTabsState extends State<SizeTabs> {
  List size = [true, false, false];

  // User tapped on coffee types
  sizeSelected(int index) {
    setState(() {
      for (int num = 0; num < size.length; num++) {
        size[num] = false;
      }
      size[index] = true;
    });
  }

  Duration myDuration = const Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          AnimatedSwitcher(
            duration: myDuration,
            child: size[0] == true
                ? OutlinedSizeButton(
                    key: const ValueKey<String>('Small Outlined'),
                    onPressed: () {
                      sizeSelected(0);
                    },
                    word: 'S',
                  )
                : SizeTextButton(
                    key: const ValueKey<String>('Small Filled'),
                    onPressed: () {
                      sizeSelected(0);
                    },
                    word: 'S',
                  ),
          ),
          addHorizontalSpace(pageSpacing),
          AnimatedSwitcher(
            duration: myDuration,
            child: size[1] == true
                ? OutlinedSizeButton(
                    key: const ValueKey<String>('Medium Outlined'),
                    onPressed: () {
                      sizeSelected(1);
                    },
                    word: 'M',
                  )
                : SizeTextButton(
                    key: const ValueKey<String>('Medium Filled'),
                    onPressed: () {
                      sizeSelected(1);
                    },
                    word: 'M',
                  ),
          ),
          addHorizontalSpace(pageSpacing),
          AnimatedSwitcher(
            duration: myDuration,
            child: size[2] == true
                ? OutlinedSizeButton(
                    key: const ValueKey<String>('Large Outlined'),
                    onPressed: () {
                      sizeSelected(2);
                    },
                    word: 'L',
                  )
                : SizeTextButton(
                    key: const ValueKey<String>('Large Filled'),
                    onPressed: () {
                      sizeSelected(2);
                    },
                    word: 'L',
                  ),
          )
        ],
      ),
    );
  }
}
