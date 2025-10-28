import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/update_domain_request_body.dart';
import '../models/update_domain_response.dart';
import '../models/add_domain_request_body.dart';
import '../models/add_domain_response.dart';
import '../models/get_all_domains_response.dart';
import '../../../../core/networking/api_constants.dart';
part 'domain_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class DomainService {
  factory DomainService(Dio dio) = _DomainService;

  @POST(ApiConstants.addDomain)
  Future<AddDomainResponse> addDomain({
    @Body() required AddDomainRequestBody body,
  });

  @GET(ApiConstants.getAllDomains)
  Future<GetAllDomainsResponse> getAllDomains();

  @PATCH(ApiConstants.updateDomain)
  Future<UpdateDomainResponse> updateDomain({
    @Body() required UpdateDomainRequestBody body,
    @Path('domain_id') required String domainId,
  });
}
