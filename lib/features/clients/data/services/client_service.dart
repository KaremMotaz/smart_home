import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:smart_home/features/clients/data/models/add_client_request_body.dart';
import 'package:smart_home/features/clients/data/models/add_client_response.dart';

import '../../../../core/networking/api_constants.dart';

part 'client_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ClientService {
  factory ClientService(Dio dio) = _ClientService;

  @POST(ApiConstants.createClient)
  Future<AddClientResponse> addClient({
    @Body() required AddClientRequestBody body,
  });
}
