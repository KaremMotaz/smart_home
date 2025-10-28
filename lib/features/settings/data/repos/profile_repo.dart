import '../../../../core/manager/user_cubit/user_cubit.dart';
import '../../../../core/models/user_data_response.dart';
import '../../../../core/functions/get_user.dart';
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
  final UserCubit userCubit;

  ProfileRepo({required this.settingsService, required this.userCubit});
  Future<ApiResult<UserDataResponse>> updateUser({
    required UpdateUserRequestBody body,
  }) async {
    try {
      final UserDataResponse result = await settingsService.updateUser(
        userId: getUser()!.id,
        body: body,
      );
      userCubit.updateUser(userDataResponse: result);
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }

  Future<ApiResult<UserDataResponse>> updateUserProfilePicture({
    required UpdateUserProfilePictureRequestBody body,
  }) async {
    try {
      final UserDataResponse result = await settingsService
          .updateUserProfilePicture(userId: getUser()!.id, body: body);
      userCubit.updateUser(userDataResponse: result);
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }

  Future<ApiResult<UserDataResponse>> updateUserEmail({
    required UpdateUserEmailRequestBody body,
  }) async {
    try {
      final UserDataResponse result = await settingsService.updateUserEmail(
        userId: getUser()!.id,
        body: body,
      );
      userCubit.updateUser(userDataResponse: result);
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }

  Future<ApiResult<UserDataResponse>> updateUsername({
    required UpdateUsernameRequestBody body,
  }) async {
    try {
      final UserDataResponse result = await settingsService.updateUsername(
        userId: getUser()!.id,
        body: body,
      );
      userCubit.updateUser(userDataResponse: result);
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
