part of 'add_domain_cubit.dart';

@freezed
class AddDomainState with _$AddDomainState {
  const factory AddDomainState.addDomainInitial() = _AddDomainInitial;
  const factory AddDomainState.addDomainLoading() = AddDomainLoading;
  const factory AddDomainState.addDomainSuccess() = AddDomainSuccess;
  const factory AddDomainState.addDomainFailure({
    required ApiErrorModel apiErrorModel,
  }) = AddDomainFailure;
}
