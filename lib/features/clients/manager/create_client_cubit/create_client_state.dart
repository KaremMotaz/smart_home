part of 'create_client_cubit.dart';

@freezed
class CreateClientState with _$CreateClientState {
  const factory CreateClientState.createClientInitial() = _CreateClientInitial;
  const factory CreateClientState.createClientLoading() = CreateClientLoading;
  const factory CreateClientState.createClientSuccess() = CreateClientSuccess;
  const factory CreateClientState.createClientFailure({
    required ApiErrorModel apiErrorModel,
  }) = CreateClientFailure;
}
