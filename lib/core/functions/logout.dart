import '../helpers/constants.dart';
import '../services/cache_helper.dart';

void appLogout() {
  CacheHelper.deleteSecureData(key: kAccessToken);
  CacheHelper.delete(key: kUserData);
  CacheHelper.delete(key: kLastVisitedRoute);
}
