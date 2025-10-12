part of 'register_cubit.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.registerInitial() = _RegisterInitial;
  const factory RegisterState.registerLoading() = _RegisterLoading;
  const factory RegisterState.registerSuccess() = _RegisterSuccess;
  const factory RegisterState.registerFailure({
    required ApiErrorModel apiErrorModel,
  }) = _RegisterFailure;
}
