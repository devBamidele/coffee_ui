import 'package:flutter/material.dart';

class IconDot extends StatelessWidget {
  const IconDot({
    Key? key,
    this.counter = 0,
  }) : super(key: key);

  final int counter;

  @override
  Widget build(BuildContext context) {
    return counter > 0
        ? Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              padding: const EdgeInsets.only(top: 1.7),
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              constraints: const BoxConstraints(
                minWidth: 13,
                minHeight: 13,
              ),
              child: Text(
                counter.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        : const SizedBox.shrink();
  }
}
