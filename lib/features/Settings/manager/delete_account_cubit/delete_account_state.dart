part of 'delete_account_cubit.dart';

@freezed
class DeleteAccountState with _$DeleteAccountState {
  const factory DeleteAccountState.deleteAccountInitial() =
      _DeleteAccountInitial;
  const factory DeleteAccountState.deleteAccountLoading() =
      DeleteAccountLoading;
  const factory DeleteAccountState.deleteAccountSuccess() =
      DeleteAccountSuccess;
  const factory DeleteAccountState.deleteAccountFailure({
    required ApiErrorModel apiErrorModel,
  }) = DeleteAccountFailure;
}
