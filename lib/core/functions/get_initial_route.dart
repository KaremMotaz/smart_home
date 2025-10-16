import 'check_if_logged_in_user.dart';
import '../routing/routes.dart';

Future<String> getInitialRoute() async {
  final bool isLoggedInUser = await checkIfLoggedInUser();
  if (isLoggedInUser) {
    return Routes.homeView;
  } else {
    return Routes.loginView;
  }
}
