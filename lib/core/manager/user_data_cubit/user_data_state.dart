part of 'user_data_cubit.dart';

@freezed
class UserDataState with _$UserDataState {
  const factory UserDataState.userDataLoading() = UserDataLoading;
  const factory UserDataState.userDataSuccess({
    required UserDataResponse userDataResponse,
  }) = UserDataSuccess;
  const factory UserDataState.userDataFailure({
    required ApiErrorModel apiErrorModel,
  }) = UserDataFailure;
}
