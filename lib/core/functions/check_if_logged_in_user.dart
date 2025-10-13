import '../helpers/constants.dart';
import '../helpers/extensions.dart';
import '../helpers/logger.dart';
import '../services/cache_helper.dart';

Future<bool> checkIfLoggedInUser() async {
  String? accessToken = await CacheHelper.getSecureData(key: kAccessToken);
  Logger.log(accessToken.toString());
  return !accessToken.isNullOrEmpty();
}
