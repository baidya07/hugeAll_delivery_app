import 'package:auto_route/auto_route.dart';
import 'package:hugeall_delivery_app/features/auth/fp_page/forgot_password_page.dart';
import 'package:hugeall_delivery_app/features/pdf/pdf_view.dart';

import '../../../features/auth/login_page.dart';
import '../../../features/splash/splash_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
// AutoRoute(page: PDFViewPage, initial: true),

    AutoRoute(
      page: ForgotPasswordPage,
    ),

    AutoRoute(
      page: LoginPage,
    ),

    // AutoRoute(
    //   path: 'profile',
    //   page: ProfilePage,
    // ),
  ],
)
class $AppRouter {}
