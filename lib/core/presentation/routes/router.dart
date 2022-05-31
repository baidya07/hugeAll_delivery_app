import 'package:auto_route/auto_route.dart';
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
    AutoRoute(page: LocationPage, ),
    AutoRoute(page: ParcelPage, initial: true,),
    AutoRoute(
      page: LandingPage,
      path: '/landing',
      // name: 'landingRouter',
      children: [
        AutoRoute(
          name: 'homeRouter',
          path: '',
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
