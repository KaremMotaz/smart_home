import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/features/domain/presentation/views/edit_domain_view.dart';
import '../manager/user_cubit/user_cubit.dart';
import '../services/get_it_service.dart';
import '../../features/settings/presentation/views/about_view.dart';
import '../../features/settings/presentation/views/edit_profile_view.dart';
import '../../features/devices/presentation/views/add_devices_view.dart';
import '../../features/rooms/presentation/views/all_rooms_view.dart';
import '../../features/settings/presentation/views/help_view.dart';
import '../../features/settings/presentation/views/profile_view.dart';
import '../../features/settings/presentation/views/settings_view.dart';
import '../../features/settings/presentation/views/sound_view.dart';
import '../../features/domain/presentation/views/add_domain_view.dart';
import '../../features/domain/presentation/views/manage_domains_view.dart';
import '../../features/home/data/models/rooms_model.dart';
import '../../features/manage_users/presentation/views/manage_users_view.dart';
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
      initialLocation: initialRoute,
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
          builder: (context, state) => BlocProvider.value(
            value: getIt<UserCubit>(),
            child: const HomeView(),
          ),
        ),
        GoRoute(
          path: Routes.manageDomainsView,
          builder: (context, state) => const ManageDomainsView(),
        ),
        GoRoute(
          path: Routes.addDomainView,
          builder: (context, state) => const AddDomainView(),
        ),
        GoRoute(
          path: Routes.editDomainView,
          builder: (context, state) => const EditDomainView(),
        ),
        GoRoute(
          path: Routes.manageUsersView,
          builder: (context, state) => const ManageUsersView(),
        ),
        GoRoute(
          path: Routes.devicesView,
          builder: (context, state) => const AddDevicesView(),
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
          builder: (context, state) => BlocProvider.value(
            value: getIt<UserCubit>(),
            child: const ProfileView(),
          ),
        ),
        GoRoute(
          path: Routes.editProfileView,
          builder: (context, state) {
            final extra = state.extra as Map<String, dynamic>?;
            final title = extra?['title'] as String?;
            return EditProfileView(title: title ?? '');
          },
        ),
        GoRoute(
          path: Routes.helpView,
          builder: (context, state) => const HelpView(),
        ),
        GoRoute(
          path: Routes.aboutView,
          builder: (context, state) => const AboutView(),
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
      // redirect: (context, state) async {
      //   final String? fullPath = state.fullPath;

      //   if (fullPath != null && fullPath.isNotEmpty) {
      //     await CacheHelper.set(key: kLastVisitedRoute, value: fullPath);
      //   }
      //   return null;
      // },
    );
  }
}
