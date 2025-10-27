import '../helpers/constants.dart';
import '../services/cache_helper.dart';

void appLogout() async {
  await CacheHelper.deleteSecureData(key: kAccessToken);
  await CacheHelper.delete(key: kUserData);
  await CacheHelper.delete(key: kLastVisitedRoute);
}
