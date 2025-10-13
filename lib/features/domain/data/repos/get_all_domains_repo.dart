import 'package:smart_home/core/helpers/logger.dart';
import 'package:smart_home/features/domain/data/models/get_all_domains_response_body.dart';
import 'package:smart_home/features/domain/data/services/domain_service.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';

class GetAllDomainsRepo {
  final DomainService domainService;

  GetAllDomainsRepo({required this.domainService});
  Future<ApiResult<GetAllDomainsResponseBody>> getAllDomains() async {
    try {
      final GetAllDomainsResponseBody response = await domainService
          .getAllDomains();
      return ApiResult.success(response);
    } catch (error) {
      Logger.log(error.toString());
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
