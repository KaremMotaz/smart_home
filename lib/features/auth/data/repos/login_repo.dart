import 'package:smart_home/core/helpers/constants.dart';
import 'package:smart_home/core/networking/api_error_handler.dart';
import 'package:smart_home/core/networking/api_result.dart';
import 'package:smart_home/core/services/cache_helper.dart';
import 'package:smart_home/features/auth/data/models/login_request_body.dart';
import 'package:smart_home/features/auth/data/models/login_response_body.dart';
import 'package:smart_home/features/auth/data/services/auth_service.dart';

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
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
