import '../../../../core/helpers/logger.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../models/create_domain_request_body.dart';
import '../models/create_domain_response.dart';
import '../services/domain_service.dart';

class CreateDomainRepo {
  final DomainService domainService;

  CreateDomainRepo({required this.domainService});
  Future<ApiResult<CreateDomainResponse>> createDomain({
    required CreateDomainRequestBody body,
  }) async {
    try {
      final CreateDomainResponse response = await domainService.createDomain(
        body: body,
      );
      return ApiResult.success(response);
    } catch (error) {
      Logger.log(error.toString());
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
