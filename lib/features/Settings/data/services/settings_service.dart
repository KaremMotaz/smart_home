import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:smart_home/core/models/user_data_response.dart';
import '../models/change_secret_request_body.dart';
import '../models/update_user_email_request_body.dart';
import '../models/update_user_profile_picture_request_body.dart';
import '../models/update_user_request_body.dart';
import '../models/update_username_request_body.dart';
import '../../../../core/networking/api_constants.dart';
part 'settings_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class SettingsService {
  factory SettingsService(Dio dio) = _SettingsService;

  @PATCH(ApiConstants.updateUser)
  Future<UserDataResponse> updateUser({
    @Body() required UpdateUserRequestBody body,
    @Path("user_id") required String userId,
  });

  @PATCH(ApiConstants.updateUserProfilePicture)
  Future<UserDataResponse> updateUserProfilePicture({
    @Body() required UpdateUserProfilePictureRequestBody body,
    @Path("user_id") required String userId,
  });

  @PATCH(ApiConstants.updateUserEmail)
  Future<UserDataResponse> updateUserEmail({
    @Body() required UpdateUserEmailRequestBody body,
    @Path("user_id") required String userId,
  });

  @PATCH(ApiConstants.updateUsername)
  Future<UserDataResponse> updateUsername({
    @Body() required UpdateUsernameRequestBody body,
    @Path("user_id") required String userId,
  });

  @PATCH(ApiConstants.changeSecret)
  Future<void> changeSecret({@Body() required ChangeSecretRequestBody body});

  @DELETE(ApiConstants.deleteUser)
  Future<void> deleteUser({@Path("user_id") required String userId});
}
