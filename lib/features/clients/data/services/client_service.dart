import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:smart_home/features/clients/data/models/create_client_request_body.dart';
import 'package:smart_home/features/clients/data/models/create_client_response.dart';

import '../../../../core/networking/api_constants.dart';

part 'client_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ClientService {
  factory ClientService(Dio dio) = _ClientService;

  @POST(ApiConstants.createClient)
  Future<CreateClientResponse> createClient({
    @Body() required CreateClientRequestBody body,
    @Path('domain_id') required String domainId,
  });
}
