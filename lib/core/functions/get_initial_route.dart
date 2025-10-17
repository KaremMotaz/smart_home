import 'package:smart_home/core/helpers/constants.dart';
import 'package:smart_home/core/services/cache_helper.dart';

import 'check_if_logged_in_user.dart';
import '../routing/routes.dart';

Future<String> getInitialRoute() async {
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
