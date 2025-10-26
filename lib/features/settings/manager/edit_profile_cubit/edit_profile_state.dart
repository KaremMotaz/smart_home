part of 'edit_profile_cubit.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState.editProfileInitial() = _EditProfileInitial;
  const factory EditProfileState.editProfileLoading() = EditProfileLoading;
  const factory EditProfileState.editProfileSuccess() = EditProfileSuccess;
  const factory EditProfileState.editProfileFailure({
    required ApiErrorModel apiErrorModel,
  }) = EditProfileFailure;
}
