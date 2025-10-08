import 'package:go_router/go_router.dart';
import '../../features/auth/presentation/views/finger_login_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import 'routes.dart';

abstract class AppRouter {
  static GoRouter createRouter() {
    return GoRouter(
      routes: [
        GoRoute(
          path: Routes.fingerLoginView,
          builder: (context, state) => const FingerLoginView(),
        ),
        GoRoute(
          path: Routes.homeView,
          builder: (context, state) => const HomeView(),
        ),
      ],
    );
  }
}
