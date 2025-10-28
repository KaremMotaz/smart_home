part of 'create_domain_cubit.dart';

@freezed
class CreateDomainState with _$CreateDomainState {
  const factory CreateDomainState.createDomainInitial() = _CreateDomainInitial;
  const factory CreateDomainState.createDomainLoading() = CreateDomainLoading;
  const factory CreateDomainState.createDomainSuccess() = CreateDomainSuccess;
  const factory CreateDomainState.createDomainFailure({
    required ApiErrorModel apiErrorModel,
  }) = CreateDomainFailure;
}
