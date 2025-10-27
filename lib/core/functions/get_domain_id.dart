import 'package:smart_home/core/helpers/constants.dart';
import 'package:smart_home/core/services/cache_helper.dart';

Future<String> getDomainId() async {
  final String domainId =
      await CacheHelper.getSecureData(key: kSelectedDomainId) ?? '';
  return domainId;
}
