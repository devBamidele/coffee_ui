import 'package:coffee_ui/theme_data/theme.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import 'app_router/router.gr.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // Get an instance of the App Router
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        maxWidth: 1700,
        minWidth: 300,
        defaultScale: true,
        breakpoints: [
          // Define the breakpoints
          const ResponsiveBreakpoint.resize(300, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(1300, name: DESKTOP)
        ],
      ),
      debugShowCheckedModeBanner: false,
      theme: MyTheme().themeData,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
