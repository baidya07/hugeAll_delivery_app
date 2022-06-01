import 'package:auto_route/auto_route.dart';
import '../../../features/ location/location.dart';
import '../../../features/splash/splash_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: LocationPage,
    ),
    AutoRoute(page: SplashPage, initial: true),

    // AutoRoute(
    //   path: 'profile',
    //   page: ProfilePage,
    // ),
  ],
)
class $AppRouter {}
