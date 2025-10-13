import 'package:smart_home/core/functions/check_if_logged_in_user.dart';
import 'package:smart_home/core/routing/routes.dart';

Future<String> getInitialRoute() async {
  final bool isLoggedInUser = await checkIfLoggedInUser();
  if (isLoggedInUser) {
    return Routes.homeView;
  } else {
    return Routes.loginView;
  }
}
