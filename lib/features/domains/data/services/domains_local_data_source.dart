import 'package:smart_home/features/domains/data/models/get_all_domains_response.dart';

import '../../../../core/helpers/constants.dart';
import '../../../../core/services/local_cache_service.dart';

class DomainsLocalDataSource {
  final LocalCacheService<GetAllDomainsResponse> cache;

  DomainsLocalDataSource({required this.cache});

  Future<GetAllDomainsResponse?> getAllDomains() async {
    try {
      final GetAllDomainsResponse? data = await cache.getData(
        key: kDomains,
        boxName: kDomainsBox,
      );
      return data;
    } catch (e) {
      await clearAllDomains();
      return null;
    }
  }

  Future<void> cacheAllDomains({required GetAllDomainsResponse data}) async {
    await cache.saveData(key: kDomains, boxName: kDomainsBox, data: data);
  }

  Future<void> clearAllDomains() async {
    await cache.clear(key: kDomains, boxName: kDomainsBox);
  }
}
