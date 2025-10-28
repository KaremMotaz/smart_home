import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/core/helpers/constants.dart';
import 'package:smart_home/core/services/local_cache_service.dart';
import 'package:smart_home/features/domains/data/models/get_all_domains_response.dart';

import '../../../../core/networking/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../data/models/add_domain_request_body.dart';
import '../../data/repos/add_domain_repo.dart';

part 'add_domain_cubit.freezed.dart';
part 'add_domain_state.dart';

class AddDomainCubit extends Cubit<AddDomainState> {
  AddDomainCubit({required this.addDomainRepo, required this.localCacheService})
    : super(const AddDomainState.addDomainInitial());

  final AddDomainRepo addDomainRepo;
  final LocalCacheService<GetAllDomainsResponse> localCacheService;

  Future<void> addDomain({
    required AddDomainRequestBody addDomainRequestBody,
  }) async {
    emit(const AddDomainState.addDomainLoading());
    final ApiResult result = await addDomainRepo.addDomain(
      body: addDomainRequestBody,
    );
    result.when(
      success: (data) async {
        await localCacheService.clear(boxName: kDomainsBox, key: kDomains);
        emit(const AddDomainState.addDomainSuccess());
      },
      failure: (apiErrorModel) async {
        emit(AddDomainState.addDomainFailure(apiErrorModel: apiErrorModel));
      },
    );
  }
}
