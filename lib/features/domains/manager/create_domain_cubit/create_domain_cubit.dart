import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/core/helpers/constants.dart';
import 'package:smart_home/core/services/local_cache_service.dart';
import 'package:smart_home/features/domains/data/models/get_all_domains_response.dart';

import '../../../../core/networking/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../data/models/create_domain_request_body.dart';
import '../../data/repos/create_domain_repo.dart';

part 'create_domain_cubit.freezed.dart';
part 'create_domain_state.dart';

class CreateDomainCubit extends Cubit<CreateDomainState> {
  CreateDomainCubit({
    required this.addDomainRepo,
    required this.localCacheService,
  }) : super(const CreateDomainState.createDomainInitial());

  final CreateDomainRepo addDomainRepo;
  final LocalCacheService<GetAllDomainsResponse> localCacheService;

  Future<void> createDomain({
    required CreateDomainRequestBody addDomainRequestBody,
  }) async {
    emit(const CreateDomainState.createDomainLoading());
    final ApiResult result = await addDomainRepo.createDomain(
      body: addDomainRequestBody,
    );
    result.when(
      success: (data) async {
        await localCacheService.clear(boxName: kDomainsBox, key: kDomains);
        emit(const CreateDomainState.createDomainSuccess());
      },
      failure: (apiErrorModel) async {
        emit(
          CreateDomainState.createDomainFailure(apiErrorModel: apiErrorModel),
        );
      },
    );
  }
}
