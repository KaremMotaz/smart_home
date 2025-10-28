import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/core/helpers/constants.dart';
import 'package:smart_home/core/services/local_cache_service.dart';
import 'package:smart_home/features/domains/data/models/get_all_domains_response.dart';

import '../../../../core/networking/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../data/models/update_domain_request_body.dart';
import '../../data/repos/update_domain_repo.dart';

part 'update_domain_cubit.freezed.dart';
part 'update_domain_state.dart';

class UpdateDomainCubit extends Cubit<UpdateDomainState> {
  UpdateDomainCubit({
    required this.updateDomainRepo,
    required this.localCacheService,
  }) : super(const UpdateDomainState.updateDomainInitial());

  final UpdateDomainRepo updateDomainRepo;
  final LocalCacheService<GetAllDomainsResponse> localCacheService;

  Future<void> updateDomain({
    required UpdateDomainRequestBody updateDomainRequestBody,
    required String domainId,
  }) async {
    emit(const UpdateDomainState.updateDomainLoading());
    final ApiResult result = await updateDomainRepo.updateDomain(
      body: updateDomainRequestBody,
      domainId: domainId,
    );
    result.when(
      success: (data) async {
        await localCacheService.clear(boxName: kDomainsBox, key: kDomains);
        emit(const UpdateDomainState.updateDomainSuccess());
      },
      failure: (apiErrorModel) async {
        emit(
          UpdateDomainState.updateDomainFailure(apiErrorModel: apiErrorModel),
        );
      },
    );
  }
}
