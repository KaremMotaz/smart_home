import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:smart_home/core/networking/api_constants.dart';
import 'package:smart_home/features/auth/data/models/login_request_body.dart';
import 'package:smart_home/features/auth/data/models/login_response_body.dart';
import 'package:smart_home/features/auth/data/models/register_request_body.dart';
import 'package:smart_home/features/auth/data/models/register_response_body.dart';
part 'auth_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class AuthService {
  factory AuthService(Dio dio) = _AuthService;

  @POST(ApiConstants.register)
  Future<RegisterResponseBody> register({
    @Body() required RegisterRequestBody body,
  });

  @POST(ApiConstants.login)
  Future<LoginResponseBody> login({@Body() required LoginRequestBody body});
}
