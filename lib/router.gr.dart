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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i8;

import 'main_page.dart' as _i1;
import 'page_a.dart' as _i3;
import 'page_b.dart' as _i4;
import 'page_b_nested.dart' as _i5;
import 'page_c.dart' as _i6;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MainPage(),
      );
    },
    TabA.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    TabB.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    TabC.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    RouteA.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.PageA(),
      );
    },
    RouteB.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.PageB(),
      );
    },
    RouteBNested.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.PageBNested(),
      );
    },
    RouteC.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.PageC(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          MainRoute.name,
          path: '/',
          children: [
            _i7.RouteConfig(
              '#redirect',
              path: '',
              parent: MainRoute.name,
              redirectTo: 'A',
              fullMatch: true,
            ),
            _i7.RouteConfig(
              TabA.name,
              path: 'A',
              parent: MainRoute.name,
              children: [
                _i7.RouteConfig(
                  RouteA.name,
                  path: '',
                  parent: TabA.name,
                )
              ],
            ),
            _i7.RouteConfig(
              TabB.name,
              path: 'B',
              parent: MainRoute.name,
              children: [
                _i7.RouteConfig(
                  RouteB.name,
                  path: '',
                  parent: TabB.name,
                ),
                _i7.RouteConfig(
                  RouteBNested.name,
                  path: 'page-bNested',
                  parent: TabB.name,
                ),
              ],
            ),
            _i7.RouteConfig(
              TabC.name,
              path: 'C',
              parent: MainRoute.name,
              children: [
                _i7.RouteConfig(
                  RouteC.name,
                  path: '',
                  parent: TabC.name,
                )
              ],
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i7.PageRouteInfo<void> {
  const MainRoute({List<_i7.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class TabA extends _i7.PageRouteInfo<void> {
  const TabA({List<_i7.PageRouteInfo>? children})
      : super(
          TabA.name,
          path: 'A',
          initialChildren: children,
        );

  static const String name = 'TabA';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class TabB extends _i7.PageRouteInfo<void> {
  const TabB({List<_i7.PageRouteInfo>? children})
      : super(
          TabB.name,
          path: 'B',
          initialChildren: children,
        );

  static const String name = 'TabB';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class TabC extends _i7.PageRouteInfo<void> {
  const TabC({List<_i7.PageRouteInfo>? children})
      : super(
          TabC.name,
          path: 'C',
          initialChildren: children,
        );

  static const String name = 'TabC';
}

/// generated route for
/// [_i3.PageA]
class RouteA extends _i7.PageRouteInfo<void> {
  const RouteA()
      : super(
          RouteA.name,
          path: '',
        );

  static const String name = 'RouteA';
}

/// generated route for
/// [_i4.PageB]
class RouteB extends _i7.PageRouteInfo<void> {
  const RouteB()
      : super(
          RouteB.name,
          path: '',
        );

  static const String name = 'RouteB';
}

/// generated route for
/// [_i5.PageBNested]
class RouteBNested extends _i7.PageRouteInfo<void> {
  const RouteBNested()
      : super(
          RouteBNested.name,
          path: 'page-bNested',
        );

  static const String name = 'RouteBNested';
}

/// generated route for
/// [_i6.PageC]
class RouteC extends _i7.PageRouteInfo<void> {
  const RouteC()
      : super(
          RouteC.name,
          path: '',
        );

  static const String name = 'RouteC';
}
