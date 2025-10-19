import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/core/networking/api_error_model.dart';
import 'package:smart_home/core/networking/api_result.dart';
import 'package:smart_home/features/Settings/data/models/change_secret_request_body.dart';
import 'package:smart_home/features/Settings/data/models/update_user_email.dart';
import 'package:smart_home/features/Settings/data/models/update_user_profile_picture.dart';
import 'package:smart_home/features/Settings/data/models/update_user_request_body.dart';
import 'package:smart_home/features/Settings/data/models/update_user_username.dart';
import 'package:smart_home/features/Settings/data/repos/profile_repo.dart';
part 'edit_profile_state.dart';
part 'edit_profile_cubit.freezed.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit({required this.profileRepo})
    : super(const EditProfileState.editProfileInitial());
  final ProfileRepo profileRepo;

  Future<void> updateUser({
    required UpdateUserRequestBody updateUserRequestBody,
  }) async {
    emit(const EditProfileState.editProfileLoading());
    final ApiResult result = await profileRepo.updateUser(
      body: updateUserRequestBody,
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

  Future<void> updateUserProfilePicture({
    required UpdateUserProfilePicture updateUserProfilePicture,
  }) async {
    emit(const EditProfileState.editProfileLoading());
    final ApiResult result = await profileRepo.updateUserProfilePicture(
      body: updateUserProfilePicture,
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
    required UpdateUserEmail updateUserEmail,
  }) async {
    emit(const EditProfileState.editProfileLoading());
    final ApiResult result = await profileRepo.updateUserEmail(
      body: updateUserEmail,
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

  Future<void> updateUserUsername({
    required UpdateUserUsername updateUserUsername,
  }) async {
    emit(const EditProfileState.editProfileLoading());
    final ApiResult result = await profileRepo.updateUserUsername(
      body: updateUserUsername,
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
