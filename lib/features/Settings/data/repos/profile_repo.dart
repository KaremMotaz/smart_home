import '../../../../core/helpers/get_user.dart';
import '../models/change_secret_request_body.dart';
import '../models/update_user_email.dart';
import '../models/update_user_profile_picture.dart';
import '../models/update_user_request_body.dart';
import '../models/update_user_username.dart';
import '../services/settings_service.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';

class ProfileRepo {
  final SettingsService settingsService;

  ProfileRepo({required this.settingsService});
  Future<ApiResult<void>> updateUser({
    required UpdateUserRequestBody body,
  }) async {
    try {
      await settingsService.updateUser(userId: getUser().id, body: body);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }

  Future<ApiResult<void>> updateUserProfilePicture({
    required UpdateUserProfilePicture body,
  }) async {
    try {
      await settingsService.updateUserProfilePicture(
        userId: getUser().id,
        body: body,
      );
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }

  Future<ApiResult<void>> updateUserEmail({
    required UpdateUserEmail body,
  }) async {
    try {
      await settingsService.updateUserEmail(userId: getUser().id, body: body);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }

  Future<ApiResult<void>> updateUserUsername({
    required UpdateUserUsername body,
  }) async {
    try {
      await settingsService.updateUserUsername(
        userId: getUser().id,
        body: body,
      );
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }

  Future<ApiResult<void>> changeSecret({
    required ChangeSecretRequestBody body,
  }) async {
    try {
      await settingsService.changeSecret(body: body);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
