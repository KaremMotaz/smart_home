part of 'update_domain_cubit.dart';

@freezed
class UpdateDomainState with _$UpdateDomainState {
  const factory UpdateDomainState.updateDomainInitial() = _UpdateDomainInitial;
  const factory UpdateDomainState.updateDomainLoading() = UpdateDomainLoading;
  const factory UpdateDomainState.updateDomainSuccess() = UpdateDomainSuccess;
  const factory UpdateDomainState.updateDomainFailure({
    required ApiErrorModel apiErrorModel,
  }) = UpdateDomainFailure;
}
