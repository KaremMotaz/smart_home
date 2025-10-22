import 'package:smart_home/core/helpers/constants.dart';
import 'package:smart_home/features/domain/data/models/update_domain_request_body.dart';
import 'package:smart_home/features/domain/data/models/update_domain_response.dart';
import '../../../../core/helpers/logger.dart';
import '../services/domain_service.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';

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
