// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../../../features/%20location/presentation/location_enable_page.dart'
    as _i1;
import '../../../features/delivery/presentation/directory_page.dart' as _i6;
import '../../../features/home/presentation/home_page.dart' as _i4;
import '../../../features/landing/presentation/landing_page.dart' as _i3;
import '../../../features/parcel/presentation/parcel_page.dart' as _i2;
import '../../../features/profile/presentation/profile_page.dart' as _i7;
import '../../../features/wallet/presentation/wallet_page.dart' as _i5;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    LocationRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LocationPage());
    },
    ParcelRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ParcelPage());
    },
    LandingRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.LandingPage());
    },
    HomeRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomePage());
    },
    WalletRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.WalletPage());
    },
    DeliveryRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.DeliveryPage());
    },
    ProfileRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ProfilePage());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig('/#redirect',
            path: '/', redirectTo: '/landing', fullMatch: true),
        _i8.RouteConfig(LocationRoute.name, path: '/location-page'),
        _i8.RouteConfig(ParcelRoute.name, path: '/parcel-page'),
        _i8.RouteConfig(LandingRoute.name, path: '/landing', children: [
          _i8.RouteConfig(HomeRouter.name, path: '', parent: LandingRoute.name),
          _i8.RouteConfig(WalletRouter.name,
              path: 'search', parent: LandingRoute.name),
          _i8.RouteConfig(DeliveryRouter.name,
              path: 'favorite', parent: LandingRoute.name),
          _i8.RouteConfig(ProfileRouter.name,
              path: 'profile', parent: LandingRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.LocationPage]
class LocationRoute extends _i8.PageRouteInfo<void> {
  const LocationRoute() : super(LocationRoute.name, path: '/location-page');

  static const String name = 'LocationRoute';
}

/// generated route for
/// [_i2.ParcelPage]
class ParcelRoute extends _i8.PageRouteInfo<void> {
  const ParcelRoute() : super(ParcelRoute.name, path: '/parcel-page');

  static const String name = 'ParcelRoute';
}

/// generated route for
/// [_i3.LandingPage]
class LandingRoute extends _i8.PageRouteInfo<void> {
  const LandingRoute({List<_i8.PageRouteInfo>? children})
      : super(LandingRoute.name, path: '/landing', initialChildren: children);

  static const String name = 'LandingRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomeRouter extends _i8.PageRouteInfo<void> {
  const HomeRouter() : super(HomeRouter.name, path: '');

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i5.WalletPage]
class WalletRouter extends _i8.PageRouteInfo<void> {
  const WalletRouter() : super(WalletRouter.name, path: 'search');

  static const String name = 'WalletRouter';
}

/// generated route for
/// [_i6.DeliveryPage]
class DeliveryRouter extends _i8.PageRouteInfo<void> {
  const DeliveryRouter() : super(DeliveryRouter.name, path: 'favorite');

  static const String name = 'DeliveryRouter';
}

/// generated route for
/// [_i7.ProfilePage]
class ProfileRouter extends _i8.PageRouteInfo<void> {
  const ProfileRouter() : super(ProfileRouter.name, path: 'profile');

  static const String name = 'ProfileRouter';
}
