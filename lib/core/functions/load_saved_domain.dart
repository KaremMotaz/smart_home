import '../helpers/constants.dart';
import '../services/cache_helper.dart';

Future<String?> loadSavedDomainId() async {
  final String? savedDomainId = await CacheHelper.getSecureData(
    key: kSelectedDomainId,
  );
  return savedDomainId;
}
