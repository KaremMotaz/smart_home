import '../../../../core/helpers/logger.dart';
import '../models/add_domain_request_body.dart';
import '../models/add_domain_response.dart';
import '../services/domain_service.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';

class AddDomainRepo {
  final DomainService domainService;

  AddDomainRepo({required this.domainService});
  Future<ApiResult<AddDomainResponse>> addDomain({
    required AddDomainRequestBody body,
  }) async {
    try {
      final AddDomainResponse response = await domainService.addDomain(
        body: body,
      );
      return ApiResult.success(response);
    } catch (error) {
      Logger.log(error.toString());
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
