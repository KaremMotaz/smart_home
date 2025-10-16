import '../helpers/constants.dart';
import '../services/cache_helper.dart';

int? loadSavedDomainIndex() {
  final int? savedDomainIndex = CacheHelper.getInt(key: kSelectedDomainIndex);
  return savedDomainIndex;
}
