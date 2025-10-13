import 'package:smart_home/core/helpers/constants.dart';
import 'package:smart_home/core/services/cache_helper.dart';

Future<String?> loadSavedDomainId() async {
  final String? savedDomainId = await CacheHelper.getSecureData(
    key: kSelectedDomainId,
  );
  return savedDomainId;
}
