import '../../../../core/helpers/get_user.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../services/settings_service.dart';

class SettingsRepo {
  final SettingsService settingsService;

  SettingsRepo({required this.settingsService});

  Future<ApiResult<void>> deleteUser() async {
    try {
      await settingsService.deleteUser(userId: getUser()!.id);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
