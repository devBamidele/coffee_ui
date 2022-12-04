// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:coffee_ui/screens/home_page.dart' as _i1;
import 'package:coffee_ui/screens/second_page.dart' as _i2;
import 'package:flutter/material.dart' as _i4;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    SecondPageRoute.name: (routeData) {
      final args = routeData.argsAs<SecondPageRouteArgs>();
      return _i3.CustomPage<dynamic>(
        routeData: routeData,
        child: _i2.SecondPage(
          key: args.key,
          index: args.index,
        ),
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          HomePageRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          SecondPageRoute.name,
          path: '/secondPage',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i3.PageRouteInfo<void> {
  const HomePageRoute()
      : super(
          HomePageRoute.name,
          path: '/',
        );

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i2.SecondPage]
class SecondPageRoute extends _i3.PageRouteInfo<SecondPageRouteArgs> {
  SecondPageRoute({
    _i4.Key? key,
    required int index,
  }) : super(
          SecondPageRoute.name,
          path: '/secondPage',
          args: SecondPageRouteArgs(
            key: key,
            index: index,
          ),
        );

  static const String name = 'SecondPageRoute';
}

class SecondPageRouteArgs {
  const SecondPageRouteArgs({
    this.key,
    required this.index,
  });

  final _i4.Key? key;

  final int index;

  @override
  String toString() {
    return 'SecondPageRouteArgs{key: $key, index: $index}';
  }
}
