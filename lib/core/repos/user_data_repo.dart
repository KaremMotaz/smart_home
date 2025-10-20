import '../models/user_data_response.dart';
import '../networking/api_service.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';

class UserDataRepo {
  final ApiService apiService;

  UserDataRepo({required this.apiService});
  Future<ApiResult<UserDataResponse>> getUserData() async {
    try {
      final UserDataResponse response = await apiService.getUserData();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
