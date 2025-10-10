import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../models/register_request_body.dart';
import '../models/register_response_body.dart';
import '../services/auth_service.dart';

class RegisterRepo {
  final AuthService authService;

  RegisterRepo({required this.authService});
  Future<ApiResult<RegisterResponseBody>> register({
    required RegisterRequestBody body,
  }) async {
    try {
      final RegisterResponseBody response = await authService.register(
        body: body,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
