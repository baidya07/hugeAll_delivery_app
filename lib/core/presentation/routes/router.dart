import 'package:auto_route/auto_route.dart';

import '../../../features/ location/location.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LocationPage, initial: true,),

        // AutoRoute(
        //   path: 'profile',
        //   page: ProfilePage,
        // ),
      ],
    )
class $AppRouter {}
