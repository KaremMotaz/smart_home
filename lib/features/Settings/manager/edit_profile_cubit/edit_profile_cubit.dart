import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/helpers/logger.dart';
import '../../../../core/manager/user_cubit/user_cubit.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../data/models/change_secret_request_body.dart';
import '../../data/models/update_user_email_request_body.dart';
import '../../data/models/update_user_profile_picture_request_body.dart';
import '../../data/models/update_user_request_body.dart';
import '../../data/models/update_username_request_body.dart';
import '../../data/repos/profile_repo.dart';
part 'edit_profile_state.dart';
part 'edit_profile_cubit.freezed.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit({required this.profileRepo, required this.userCubit})
    : super(const EditProfileState.editProfileInitial());
  final ProfileRepo profileRepo;
  final UserCubit userCubit;
  String? phoneNumber;

  void setPhoneNumber(String number) {
    phoneNumber = number;
  }

  Future<void> updateUser({
    required UpdateUserRequestBody updateUserRequestBody,
  }) async {
    emit(const EditProfileState.editProfileLoading());
    final ApiResult result = await profileRepo.updateUser(
      body: updateUserRequestBody,
    );
    result.when(
      success: (userDataResponse) {
        userCubit.updateUser(userDataResponse: userDataResponse);
        emit(const EditProfileState.editProfileSuccess());
      },
      failure: (apiErrorModel) async {
        emit(EditProfileState.editProfileFailure(apiErrorModel: apiErrorModel));
      },
    );
  }

  Future<void> updateUserProfilePicture({
    required UpdateUserProfilePictureRequestBody
    updateUserProfilePictureRequestBody,
  }) async {
    emit(const EditProfileState.editProfileLoading());
    final ApiResult result = await profileRepo.updateUserProfilePicture(
      body: updateUserProfilePictureRequestBody,
    );
    result.when(
      success: (data) async {
        emit(const EditProfileState.editProfileSuccess());
      },
      failure: (apiErrorModel) async {
        emit(EditProfileState.editProfileFailure(apiErrorModel: apiErrorModel));
      },
    );
  }

  Future<void> updateUserEmail({
    required UpdateUserEmailRequestBody updateUserEmailRequestBody,
  }) async {
    emit(const EditProfileState.editProfileLoading());
    final ApiResult result = await profileRepo.updateUserEmail(
      body: updateUserEmailRequestBody,
    );
    result.when(
      success: (data) async {
        emit(const EditProfileState.editProfileSuccess());
      },
      failure: (apiErrorModel) async {
        emit(EditProfileState.editProfileFailure(apiErrorModel: apiErrorModel));
      },
    );
  }

  Future<void> updateUsername({
    required UpdateUsernameRequestBody updateUsernameRequestBody,
  }) async {
    emit(const EditProfileState.editProfileLoading());
    final ApiResult result = await profileRepo.updateUsername(
      body: updateUsernameRequestBody,
    );
    result.when(
      success: (data) async {
        Logger.log(data.toString());
        emit(const EditProfileState.editProfileSuccess());
      },
      failure: (apiErrorModel) async {
        Logger.log(apiErrorModel.error.toString());
        emit(EditProfileState.editProfileFailure(apiErrorModel: apiErrorModel));
      },
    );
  }

  Future<void> changeSecret({
    required ChangeSecretRequestBody changeSecretRequestBody,
  }) async {
    emit(const EditProfileState.editProfileLoading());
    final ApiResult result = await profileRepo.changeSecret(
      body: changeSecretRequestBody,
    );
    result.when(
      success: (data) async {
        emit(const EditProfileState.editProfileSuccess());
      },
      failure: (apiErrorModel) async {
        emit(EditProfileState.editProfileFailure(apiErrorModel: apiErrorModel));
      },
    );
  }
}
