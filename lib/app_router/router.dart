import 'package:auto_route/annotations.dart';
import 'package:coffee_ui/screens/home_page.dart';
import 'package:coffee_ui/screens/second_page.dart';

@AdaptiveAutoRouter(
  routes: [
    AutoRoute(page: HomePage, initial: true),
    CustomRoute(page: SecondPage, path: SecondPage.tag)
  ],
)
class $AppRouter {}
