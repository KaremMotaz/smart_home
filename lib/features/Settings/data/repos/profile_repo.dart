import 'package:smart_home/features/Settings/data/models/update_user_email_response.dart';
import 'package:smart_home/features/Settings/data/models/update_user_profile_picture_response.dart';
import 'package:smart_home/features/Settings/data/models/update_user_response.dart';
import 'package:smart_home/features/Settings/data/models/update_username_response.dart';
import '../../../../core/helpers/get_user.dart';
import '../models/change_secret_request_body.dart';
import '../models/update_user_email_request_body.dart';
import '../models/update_user_profile_picture_request_body.dart';
import '../models/update_user_request_body.dart';
import '../models/update_username_request_body.dart';
import '../services/settings_service.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';

class ProfileRepo {
  final SettingsService settingsService;

  ProfileRepo({required this.settingsService});
  Future<ApiResult<UpdateUserResponse>> updateUser({
    required UpdateUserRequestBody body,
  }) async {
    try {
      final UpdateUserResponse result = await settingsService.updateUser(
        userId: getUser()!.id,
        body: body,
      );
      saveUser(userDataResponse: result);
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }

  Future<ApiResult<UpdateUserProfilePictureResponse>> updateUserProfilePicture({
    required UpdateUserProfilePictureRequestBody body,
  }) async {
    try {
      final UpdateUserProfilePictureResponse result = await settingsService
          .updateUserProfilePicture(userId: getUser()!.id, body: body);
      saveUser(userDataResponse: result);
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }

  Future<ApiResult<UpdateUserEmailResponse>> updateUserEmail({
    required UpdateUserEmailRequestBody body,
  }) async {
    try {
      final UpdateUserEmailResponse result = await settingsService
          .updateUserEmail(userId: getUser()!.id, body: body);
      saveUser(userDataResponse: result);
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }

  Future<ApiResult<UpdateUsernameResponse>> updateUsername({
    required UpdateUsernameRequestBody body,
  }) async {
    try {
      final UpdateUsernameResponse result = await settingsService
          .updateUsername(userId: getUser()!.id, body: body);
      saveUser(userDataResponse: result);
      return ApiResult.success(result);
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
