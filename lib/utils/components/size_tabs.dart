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

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            child: size[0] == true
                ? OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: buttonShape,
                      fixedSize: buttonSize,
                      side: const BorderSide(
                        width: 1.75,
                        color: colorSecondaryVariant,
                      ),
                    ),
                    onPressed: () {
                      sizeSelected(0);
                    },
                    child: const Text(
                      'S',
                      style: TextStyle(
                        fontSize: 18,
                        color: colorSecondaryVariant,
                      ),
                    ),
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
            duration: const Duration(milliseconds: 250),
            child: size[1] == true
                ? OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: buttonShape,
                      fixedSize: buttonSize,
                      side: const BorderSide(
                        width: 1.75,
                        color: colorSecondaryVariant,
                      ),
                    ),
                    onPressed: () {
                      sizeSelected(1);
                    },
                    child: const Text(
                      'M',
                      style: TextStyle(
                        fontSize: 18,
                        color: colorSecondaryVariant,
                      ),
                    ),
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
            duration: const Duration(milliseconds: 250),
            child: size[2] == true
                ? OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: buttonShape,
                      fixedSize: buttonSize,
                      side: const BorderSide(
                        width: 1.75,
                        color: colorSecondaryVariant,
                      ),
                    ),
                    onPressed: () {
                      sizeSelected(2);
                    },
                    child: const Text(
                      'L',
                      style: TextStyle(
                        fontSize: 18,
                        color: colorSecondaryVariant,
                      ),
                    ),
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
