// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../../../features/%20location/presentation/location_enable_page.dart'
    as _i3;
import '../../../features/auth/fp_page/forgot_password_page.dart' as _i2;
import '../../../features/auth/login_page.dart' as _i5;
import '../../../features/delivery/presentation/directory_page.dart' as _i9;
import '../../../features/home/presentation/home_page.dart' as _i7;
import '../../../features/landing/presentation/landing_page.dart' as _i6;
import '../../../features/parcel/presentation/parcel_page.dart' as _i4;
import '../../../features/profile/presentation/profile_page.dart' as _i10;
import '../../../features/splash/splash_screen.dart' as _i1;
import '../../../features/wallet/presentation/wallet_page.dart' as _i8;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ForgotPasswordPage());
    },
    LocationRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.LocationPage());
    },
    ParcelRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ParcelPage());
    },
    LoginRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.LoginPage());
    },
    LandingRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.LandingPage());
    },
    HomeRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.HomePage());
    },
    WalletRouter.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.WalletPage());
    },
    DeliveryRouter.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.DeliveryPage());
    },
    ProfileRouter.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.ProfilePage());
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(SplashRoute.name, path: '/'),
        _i11.RouteConfig(ForgotPasswordRoute.name,
            path: '/forgot-password-page'),
        _i11.RouteConfig(LocationRoute.name, path: '/location-page'),
        _i11.RouteConfig(ParcelRoute.name, path: '/parcel-page'),
        _i11.RouteConfig(LoginRoute.name, path: '/login-page'),
        _i11.RouteConfig(LandingRoute.name, path: '/landing', children: [
          _i11.RouteConfig(HomeRoute.name,
              path: 'home-page', parent: LandingRoute.name),
          _i11.RouteConfig(WalletRouter.name,
              path: 'search', parent: LandingRoute.name),
          _i11.RouteConfig(DeliveryRouter.name,
              path: 'favorite', parent: LandingRoute.name),
          _i11.RouteConfig(ProfileRouter.name,
              path: 'profile', parent: LandingRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i11.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.ForgotPasswordPage]
class ForgotPasswordRoute extends _i11.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(ForgotPasswordRoute.name, path: '/forgot-password-page');

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i3.LocationPage]
class LocationRoute extends _i11.PageRouteInfo<void> {
  const LocationRoute() : super(LocationRoute.name, path: '/location-page');

  static const String name = 'LocationRoute';
}

/// generated route for
/// [_i4.ParcelPage]
class ParcelRoute extends _i11.PageRouteInfo<void> {
  const ParcelRoute() : super(ParcelRoute.name, path: '/parcel-page');

  static const String name = 'ParcelRoute';
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i11.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-page');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i6.LandingPage]
class LandingRoute extends _i11.PageRouteInfo<void> {
  const LandingRoute({List<_i11.PageRouteInfo>? children})
      : super(LandingRoute.name, path: '/landing', initialChildren: children);

  static const String name = 'LandingRoute';
}

/// generated route for
/// [_i7.HomePage]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i8.WalletPage]
class WalletRouter extends _i11.PageRouteInfo<void> {
  const WalletRouter() : super(WalletRouter.name, path: 'search');

  static const String name = 'WalletRouter';
}

/// generated route for
/// [_i9.DeliveryPage]
class DeliveryRouter extends _i11.PageRouteInfo<void> {
  const DeliveryRouter() : super(DeliveryRouter.name, path: 'favorite');

  static const String name = 'DeliveryRouter';
}

/// generated route for
/// [_i10.ProfilePage]
class ProfileRouter extends _i11.PageRouteInfo<void> {
  const ProfileRouter() : super(ProfileRouter.name, path: 'profile');

  static const String name = 'ProfileRouter';
}
