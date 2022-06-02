import 'package:auto_route/auto_route.dart';
import 'package:hugeall_delivery_app/features/auth/fp_page/forgot_password_page.dart';

import '../../../features/auth/login_page.dart';
import '../../../features/splash/splash_screen.dart';
import 'package:hugeall_delivery_app/features/wallet/presentation/wallet_page.dart';

import '../../../features/ location/presentation/location_enable_page.dart';
import '../../../features/delivery/presentation/directory_page.dart';
import '../../../features/home/presentation/home_page.dart';
import '../../../features/landing/presentation/landing_page.dart';
import '../../../features/parcel/presentation/parcel_page.dart';
import '../../../features/profile/presentation/profile_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(
      page: ForgotPasswordPage,
    ),
    AutoRoute(
      page: LocationPage,
    ),
    AutoRoute(
      page: ParcelPage,
    ),
    AutoRoute(
      page: LoginPage,
    ),
    AutoRoute(
      page: LandingPage,
      path: '/landing',
      // name: 'landingRouter',
      children: [
        AutoRoute(
          name: 'homeRoute',
          page: HomePage,
        ),
        AutoRoute(name: 'walletRouter', path: 'search', page: WalletPage),
        AutoRoute(name: 'deliveryRouter', path: 'favorite', page: DeliveryPage),
        AutoRoute(name: 'profileRouter', path: 'profile', page: ProfilePage),
        // AutoRoute(
        //   path: 'profile',
        //   page: ProfilePage,
        // ),
      ],
    ),

    // AutoRoute(
    //   path: 'profile',
    //   page: ProfilePage,
    // ),
  ],
)
class $AppRouter {}
