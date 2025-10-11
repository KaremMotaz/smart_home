import 'package:go_router/go_router.dart';
import 'package:smart_home/features/home/data/models/rooms_model.dart';
import '../../features/auth/presentation/views/login_view.dart';
import '../../features/auth/presentation/views/register_view.dart';
import '../../features/auth/presentation/views/welcome_view.dart';
import '../../features/home/presentation/views/room_view.dart';
import '../../features/onboarding/onboarding_view.dart';
import '../../features/auth/presentation/views/finger_login_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import 'routes.dart';

abstract class AppRouter {
  static GoRouter createRouter() {
    return GoRouter(
      routes: [
        GoRoute(
          path: Routes.onboardingView,
          builder: (context, state) => const OnboardingView(),
        ),
        GoRoute(
          path: Routes.fingerLoginView,
          builder: (context, state) => const FingerLoginView(),
        ),
        GoRoute(
          path: Routes.welcomeView,
          builder: (context, state) => const WelcomeView(),
        ),
        GoRoute(
          path: Routes.registerView,
          builder: (context, state) => const RegisterView(),
        ),
        GoRoute(
          path: Routes.loginView,
          builder: (context, state) => const LoginView(),
        ),
        GoRoute(
          path: Routes.homeView,
          builder: (context, state) => const HomeView(),
        ),
        GoRoute(
          path: Routes.roomView,
          builder: (context, state) {
            final room = state.extra as RoomsModel;
            return RoomView(room: room);
          },
        ),
      ],
    );
  }
}
