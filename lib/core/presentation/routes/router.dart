import 'package:auto_route/auto_route.dart';
import 'package:hugeall_delivery_app/features/splash/splash_screen1.dart';

import '../../../features/ location/location.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: LocationPage,
    ),
    AutoRoute(page: FirstSplashPage, initial: true),

    // AutoRoute(
    //   path: 'profile',
    //   page: ProfilePage,
    // ),
  ],
)
class $AppRouter {}
