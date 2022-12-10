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

  Duration myDuration = const Duration(milliseconds: 250);

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
                    onPressed: () {
                      sizeSelected(0);
                    },
                    word: 'S',
                  )
                : SizeTextButton(
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
                    onPressed: () {
                      sizeSelected(1);
                    },
                    word: 'M',
                  )
                : SizeTextButton(
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
                    onPressed: () {
                      sizeSelected(2);
                    },
                    word: 'L',
                  )
                : SizeTextButton(
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
