part of 'provision_client_cubit.dart';

@freezed
class ProvisionClientState with _$ProvisionClientState {
  const factory ProvisionClientState.provisionClientInitial() =
      _ProvisionClientInitial;
  const factory ProvisionClientState.provisionClientLoading() =
      ProvisionClientLoading;
  const factory ProvisionClientState.provisionClientSuccess() =
      ProvisionClientSuccess;
  const factory ProvisionClientState.provisionClientFailure({
    required ApiErrorModel apiErrorModel,
  }) = ProvisionClientFailure;
}
