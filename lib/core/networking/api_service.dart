import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:smart_home/core/models/refresh_token_response.dart';
import '../models/user_data_response.dart';
import '../../../../core/networking/api_constants.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET(ApiConstants.getUserData)
  Future<UserDataResponse> getUserData();

  @POST(ApiConstants.refreshToken)
  Future<RefreshTokenResponse> refreshAccessToken({
    @Header("Authorization") required String refreshTokenHeader,
  });
}
