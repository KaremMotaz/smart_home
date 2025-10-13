import 'package:go_router/go_router.dart';
import 'package:smart_home/features/Devices/presentation/views/devices_view.dart';
import 'package:smart_home/features/Rooms/presentation/views/all_rooms_view.dart';
import 'package:smart_home/features/Settings/presentation/views/help_view.dart';
import 'package:smart_home/features/Settings/presentation/views/profile_view.dart';
import 'package:smart_home/features/Settings/presentation/views/settings_view.dart';
import 'package:smart_home/features/Settings/presentation/views/sound_view.dart';
import 'package:smart_home/features/domain/presentation/views/add_domain_view.dart';
import 'package:smart_home/features/domain/presentation/views/manage_domains_view.dart';
import 'package:smart_home/features/home/data/models/rooms_model.dart';
import 'package:smart_home/features/manage_users/presentation/views/manage_users_view.dart';
import 'package:smart_home/try_view.dart';
import '../../features/auth/presentation/views/login_view.dart';
import '../../features/auth/presentation/views/register_view.dart';
import '../../features/auth/presentation/views/welcome_view.dart';
import '../../features/home/presentation/views/selected_room_view.dart';
import '../../features/onboarding/presentation/views/onboarding_view.dart';
import '../../features/auth/presentation/views/finger_login_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import 'routes.dart';

abstract class AppRouter {
  static GoRouter createRouter({required String initialRoute}) {
    return GoRouter(
      initialLocation: Routes.manageDomainsView,
      routes: [
        GoRoute(
          path: Routes.tryView,
          builder: (context, state) => const TryView(),
        ),
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
          path: Routes.addDomainView,
          builder: (context, state) => const AddDomainView(),
        ),
        GoRoute(
          path: Routes.manageDomainsView,
          builder: (context, state) => const ManageDomainsView(),
        ),
        GoRoute(
          path: Routes.manageUsersView,
          builder: (context, state) => const ManageUsersView(),
        ),
        GoRoute(
          path: Routes.devicesView,
          builder: (context, state) => const DevicesView(),
        ),

        GoRoute(
          path: Routes.soundView,
          builder: (context, state) => const SoundView(),
        ),
        GoRoute(
          path: Routes.settingsView,
          builder: (context, state) => const SettingsView(),
        ),
        GoRoute(
          path: Routes.profileView,
          builder: (context, state) => const ProfileView(),
        ),
        GoRoute(
          path: Routes.helpView,
          builder: (context, state) => const HelpView(),
        ),
        GoRoute(
          path: Routes.allRoomsView,
          builder: (context, state) => const AllRoomsView(),
        ),
        GoRoute(
          path: Routes.selectedroomView,
          builder: (context, state) {
            final room = state.extra as RoomsModel;
            return SelectedRoomView(room: room);
          },
        ),
      ],
    );
  }
}
