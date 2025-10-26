import 'package:smart_home/core/helpers/constants.dart';
import 'package:smart_home/core/networking/api_error_handler.dart';
import 'package:smart_home/core/networking/api_result.dart';
import 'package:smart_home/features/devices/data/models/provision_client_request_body.dart';
import 'package:smart_home/features/devices/data/models/provision_client_response.dart';
import 'package:smart_home/features/devices/data/services/provision_service.dart';

import '../../../../core/helpers/logger.dart';

class ProvisionClientRepo {
  final ProvisionService provisionService;

  ProvisionClientRepo({required this.provisionService});
  Future<ApiResult<ProvisionClientResponse>> createClient({
    required ProvisionClientRequestBody client,
  }) async {
    try {
      final ProvisionClientResponse response = await provisionService
          .createClient(client: client, domainId: kSelectedDomainId);
      return ApiResult.success(response);
    } catch (error) {
      Logger.log(error.toString());
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
