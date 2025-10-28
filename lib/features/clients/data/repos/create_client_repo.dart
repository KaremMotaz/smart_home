import 'package:smart_home/core/functions/get_domain_id.dart';
import 'package:smart_home/core/networking/api_error_handler.dart';
import 'package:smart_home/core/networking/api_result.dart';
import 'package:smart_home/features/clients/data/models/create_client_request_body.dart';
import 'package:smart_home/features/clients/data/models/create_client_response.dart';
import 'package:smart_home/features/clients/data/services/client_service.dart';
import '../../../../core/helpers/logger.dart';

class CreateClientRepo {
  final ClientService clientService;

  CreateClientRepo({required this.clientService});
  Future<ApiResult<CreateClientResponse>> createClient({
    required CreateClientRequestBody body,
  }) async {
    try {
      final CreateClientResponse response = await clientService.createClient(
        body: body,
        domainId: await getDomainId(),
      );
      return ApiResult.success(response);
    } catch (error) {
      Logger.log(error.toString());
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
