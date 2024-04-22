import 'package:go_router/go_router.dart';
import 'package:ideate_ai/src/view/auth/email_login_page.dart';
import 'package:ideate_ai/src/view/auth/email_submit_page.dart';
import 'package:ideate_ai/src/view/auth/get_started_page.dart';
import 'package:ideate_ai/src/view/splash_screen_page.dart';

import 'app_routes.dart';

class AppRouter {
  final router = GoRouter(
    initialLocation: AppRoutes.loading,
    routes: [
      GoRoute(
        path: AppRoutes.loading,
        name: AppRoutes.loading,
        builder: (context, state) => const SplashScreenPage(),
      ),
      GoRoute(
        path: AppRoutes.getStarted,
        name: AppRoutes.getStarted,
        builder: (context, state) => const GetStartedPage(),
        routes: [
          GoRoute(
            path: AppRoutes.email,
            name: AppRoutes.email,
            builder: (context, state) => const EmailSubmitPage(),
          ),
          GoRoute(
            path: AppRoutes.login,
            name: AppRoutes.login,
            builder: (context, state) => EmailLoginPage(
              email: state.extra as String? ?? '',
            ),
          ),
        ],
      ),
    ],
  );
}
