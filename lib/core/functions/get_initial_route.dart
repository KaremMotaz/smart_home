import '../helpers/constants.dart';
import '../helpers/extensions.dart';
import '../services/cache_helper.dart';

import 'check_if_logged_in_user.dart';
import '../routing/routes.dart';

Future<String> getInitialRoute() async {
  final bool isLoggedInUser = await checkIfLoggedInUser();
  final bool isOnboardingSeen = CacheHelper.getBool(key: kHasSeenOnboarding);
  final String? lastRoute = CacheHelper.getString(key: kLastVisitedRoute);
  if (!lastRoute.isNullOrEmpty()) {
    return lastRoute!;
  }
  if (!isOnboardingSeen) {
    return Routes.onboardingView;
  }
  if (isLoggedInUser) {
    return Routes.homeView;
  } else {
    return Routes.loginView;
  }
}

Future<String> getInitialRouteIfNoLastRoute() async {
  final bool isLoggedInUser = await checkIfLoggedInUser();
  final bool isOnboardingSeen = CacheHelper.getBool(key: kHasSeenOnboarding);
  if (!isOnboardingSeen) {
    return Routes.onboardingView;
  }
  if (isLoggedInUser) {
    return Routes.homeView;
  } else {
    return Routes.loginView;
  }
}
