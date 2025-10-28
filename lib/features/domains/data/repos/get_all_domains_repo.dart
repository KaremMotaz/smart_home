import 'package:smart_home/features/domains/data/services/domains_local_data_source.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../models/get_all_domains_response.dart';
import '../services/domain_service.dart';

class GetAllDomainsRepo {
  final DomainService domainService;
  final DomainsLocalDataSource domainsLocalDataSource;

  GetAllDomainsRepo({
    required this.domainService,
    required this.domainsLocalDataSource,
  });
  Future<ApiResult<GetAllDomainsResponse>> getAllDomains() async {
    try {
      // Try to get data from cache first
      final GetAllDomainsResponse? cached = await domainsLocalDataSource
          .getAllDomains();
      if (cached != null && cached.domains.isNotEmpty) {
        return ApiResult.success(cached);
      }

      //  No data in cache, fetch from remote
      final GetAllDomainsResponse response = await domainService
          .getAllDomains();

      // Cache the data
      await domainsLocalDataSource.cacheAllDomains(data: response);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
