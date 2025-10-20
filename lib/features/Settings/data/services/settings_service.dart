import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/change_secret_request_body.dart';
import '../models/update_user_email.dart';
import '../models/update_user_profile_picture.dart';
import '../models/update_user_request_body.dart';
import '../models/update_username.dart';
import '../../../../core/networking/api_constants.dart';
part 'settings_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class SettingsService {
  factory SettingsService(Dio dio) = _SettingsService;

  @PATCH(ApiConstants.updateUser)
  Future<void> updateUser({
    @Body() required UpdateUserRequestBody body,
    @Path("user_id") required String userId,
  });

  @PATCH(ApiConstants.updateUserProfilePicture)
  Future<void> updateUserProfilePicture({
    @Body() required UpdateUserProfilePicture body,
    @Path("user_id") required String userId,
  });

  @PATCH(ApiConstants.updateUserEmail)
  Future<void> updateUserEmail({
    @Body() required UpdateUserEmail body,
    @Path("user_id") required String userId,
  });

  @PATCH(ApiConstants.updateUserEmail)
  Future<void> updateUsername({
    @Body() required UpdateUsername body,
    @Path("user_id") required String userId,
  });

  @PATCH(ApiConstants.changeSecret)
  Future<void> changeSecret({@Body() required ChangeSecretRequestBody body});

  @DELETE(ApiConstants.deleteUser)
  Future<void> deleteUser({@Path("user_id") required String userId});
}
