import 'package:ideate_ai/src/view/email_login.dart';
import 'package:ideate_ai/src/view/get_started_page.dart';
import 'package:ideate_ai/src/view/splash_screen_page.dart';

import 'app_routes.dart';

class AppRouter {
  final router = {
    AppRoutes.loading: (context) => const SplashScreenPage(),
    AppRoutes.getStarted: (context) => const GetStartedPage(),
    AppRoutes.email: (context) => const EmailPage(),
    
  };
}
