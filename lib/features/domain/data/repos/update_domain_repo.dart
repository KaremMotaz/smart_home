import '../../../../core/helpers/constants.dart';
import '../../../../core/helpers/logger.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../models/update_domain_request_body.dart';
import '../models/update_domain_response.dart';
import '../services/domain_service.dart';

class UpdateDomainRepo {
  final DomainService domainService;

  UpdateDomainRepo({required this.domainService});
  Future<ApiResult<UpdateDomainResponse>> updateDomain({
    required UpdateDomainRequestBody body,
  }) async {
    try {
      final UpdateDomainResponse response = await domainService.updateDomain(
        body: body,
        domainId: kSelectedDomainId,
      );
      return ApiResult.success(response);
    } catch (error) {
      Logger.log(error.toString());
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
