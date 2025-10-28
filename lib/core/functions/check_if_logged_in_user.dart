import '../helpers/constants.dart';
import '../services/cache_helper.dart';

Future<bool> checkIfLoggedInUser() async {
  String? accessToken = await CacheHelper.getSecureData(key: kAccessToken);
  return accessToken != null && accessToken.isNotEmpty;
}
