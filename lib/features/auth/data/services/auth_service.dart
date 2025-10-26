import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/refresh_token_response.dart';

import '../../../../core/networking/api_constants.dart';
import '../models/login_request_body.dart';
import '../models/login_response_body.dart';
import '../models/register_request_body.dart';
import '../models/register_response_body.dart';

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

  @POST(ApiConstants.refreshToken)
  Future<RefreshTokenResponse> refreshAccessToken({
    @Header("Authorization") required String refreshTokenHeader,
    @Body() required refreshTokenRequestBody,
    @Header("Content-Type") required String contentType,
  });
}
