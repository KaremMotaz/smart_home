import 'dart:developer';

import 'package:smart_home/features/domain/data/models/add_domain_request_body.dart';
import 'package:smart_home/features/domain/data/models/add_domain_response_body.dart';
import 'package:smart_home/features/domain/data/services/domain_service.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';

class AddDomainRepo {
  final DomainService domainService;

  AddDomainRepo({required this.domainService});
  Future<ApiResult<AddDomainResponseBody>> addDomain({
    required AddDomainRequestBody body,
  }) async {
    try {
      final AddDomainResponseBody response = await domainService.addDomain(
        body: body,
      );
      return ApiResult.success(response);
    } catch (error) {
      log(error.toString());
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
