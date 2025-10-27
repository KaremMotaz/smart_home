import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/networking/api_constants.dart';
import '../models/provision_client_request_body.dart';
import '../models/provision_client_response.dart';
part 'provision_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ProvisionService {
  factory ProvisionService(Dio dio) = _ProvisionService;

  @POST(ApiConstants.provisionClient)
  Future<ProvisionClientResponse> createClient({
    @Body() required ProvisionClientRequestBody client,
    @Header("domain_id") required String domainId,
    // @Body() required String domainId,
  });
}
