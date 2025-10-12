import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:smart_home/features/domain/data/models/add_domain_request_body.dart';
import 'package:smart_home/features/domain/data/models/add_domain_response_body.dart';
import '../../../../core/networking/api_constants.dart';
part 'domain_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class DomainService {
  factory DomainService(Dio dio) = _DomainService;

  @POST(ApiConstants.addDomain)
  Future<AddDomainResponseBody> addDomain({
    @Body() required AddDomainRequestBody body,
  });
}
