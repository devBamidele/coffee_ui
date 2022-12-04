import 'package:blur/blur.dart';
import 'package:coffee_ui/utils/constants.dart';
import 'package:coffee_ui/utils/sample_data.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key? key,
    required this.index,
  }) : super(key: key);

  static const tag = '/secondPage';

  final int index;

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> item = coffeeTiles[index];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(pageSpacing),
          child: Column(
            children: [
              ClipRRect(
                // The Rectangle clipping the image
                borderRadius: circularBorder2,
                child: Stack(
                  children: [
                    SizedBox(
                      height: 470,
                      width: double.maxFinite,
                      child: Hero(
                        tag: index.toString(),
                        child: Image.asset(
                          item['path'],
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Positioned(
                      child: SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Text(
                                item['coffee'],
                              ),
                            ],
                          ),
                        ),
                      ).frosted(
                        height: 150,
                        width: double.maxFinite,
                        blur: 4.5,
                        frostColor: Colors.transparent,
                        borderRadius: circularBorder2,
                      ),
                    )
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
