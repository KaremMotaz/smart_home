import 'package:smart_home/core/helpers/constants.dart';
import 'package:smart_home/core/services/cache_helper.dart';

void appLogout() {
  CacheHelper.set(key: kAccessToken, value: null);
}
