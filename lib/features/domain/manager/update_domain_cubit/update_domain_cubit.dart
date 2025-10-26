import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../data/models/update_domain_request_body.dart';
import '../../data/repos/update_domain_repo.dart';

part 'update_domain_cubit.freezed.dart';
part 'update_domain_state.dart';

class UpdateDomainCubit extends Cubit<UpdateDomainState> {
  UpdateDomainCubit({required this.updateDomainRepo})
    : super(const UpdateDomainState.updateDomainInitial());
  final UpdateDomainRepo updateDomainRepo;

  Future<void> updateDomain({
    required UpdateDomainRequestBody updateDomainRequestBody,
  }) async {
    emit(const UpdateDomainState.updateDomainLoading());
    final ApiResult result = await updateDomainRepo.updateDomain(
      body: updateDomainRequestBody,
    );
    result.when(
      success: (data) {
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
