import 'package:auto_route/auto_route.dart';
import 'package:hugeall_delivery_app/features/auth/fp_page/forgot_password_page.dart';
import 'package:hugeall_delivery_app/features/auth/login_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: ForgotPasswordPage,
    ),
    AutoRoute(
      page: LoginPage,
      initial: true,
    ),

    // AutoRoute(
    //   path: 'profile',
    //   page: ProfilePage,
    // ),
  ],
)
class $AppRouter {}
