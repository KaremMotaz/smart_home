import '../../../../core/helpers/logger.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../mock_get_all_domains_data.dart';
import '../models/get_all_domains_response_body.dart';
import '../services/domain_service.dart';

class GetAllDomainsRepo {
  final DomainService domainService;

  GetAllDomainsRepo({required this.domainService});
  Future<ApiResult<GetAllDomainsResponseBody>> getAllDomains() async {
    try {
      // final GetAllDomainsResponseBody response = await domainService
      //     .getAllDomains();
      // return ApiResult.success(response);
      final mockData = MockGetAllDomainsData.mockResponse;
      return ApiResult.success(mockData);
    } catch (error) {
      Logger.log(error.toString());
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
