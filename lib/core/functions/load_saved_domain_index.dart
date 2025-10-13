import 'package:smart_home/core/helpers/constants.dart';
import 'package:smart_home/core/services/cache_helper.dart';

int? loadSavedDomainIndex() {
  final int? savedDomainIndex = CacheHelper.getInt(key: kSelectedDomainIndex);
  return savedDomainIndex;
}
