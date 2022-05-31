// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../../features/%20location/location.dart' as _i1;
import '../../../features/splash/splash_screen1.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    LocationRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LocationPage());
    },
    FirstSplashRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.FirstSplashPage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(LocationRoute.name, path: '/location-page'),
        _i3.RouteConfig(FirstSplashRoute.name, path: '/')
      ];
}

/// generated route for
/// [_i1.LocationPage]
class LocationRoute extends _i3.PageRouteInfo<void> {
  const LocationRoute() : super(LocationRoute.name, path: '/location-page');

  static const String name = 'LocationRoute';
}

/// generated route for
/// [_i2.FirstSplashPage]
class FirstSplashRoute extends _i3.PageRouteInfo<void> {
  const FirstSplashRoute() : super(FirstSplashRoute.name, path: '/');

  static const String name = 'FirstSplashRoute';
}
