import '../../../../core/helpers/constants.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/services/cache_helper.dart';
import '../models/login_request_body.dart';
import '../models/login_response_body.dart';
import '../services/auth_service.dart';

class LoginRepo {
  final AuthService authService;

  LoginRepo({required this.authService});
  Future<ApiResult<LoginResponseBody>> login({
    required LoginRequestBody body,
  }) async {
    try {
      final LoginResponseBody response = await authService.login(body: body);
      await CacheHelper.setSecureData(
        key: kAccessToken,
        value: response.accessToken,
      );
      await CacheHelper.setSecureData(
        key: kRefreshToken,
        value: response.refreshToken,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
