part of 'get_all_domains_cubit.dart';

@freezed
class GetAllDomainsState with _$GetAllDomainsState {
  const factory GetAllDomainsState.getAllDomainsLoading() =
      GetAllDomainsLoading;

  const factory GetAllDomainsState.getAllDomainsSuccess({
    required GetAllDomainsResponse getAllDomainsResponseBody,
    @Default(-1) int selectedIndex,
  }) = GetAllDomainsSuccess;
  const factory GetAllDomainsState.getAllDomainsFailure({
    required ApiErrorModel apiErrorModel,
  }) = GetAllDomainsFailure;
}
