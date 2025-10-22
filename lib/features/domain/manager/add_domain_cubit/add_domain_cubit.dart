import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../data/models/add_domain_request_body.dart';
import '../../data/repos/add_domain_repo.dart';
part 'add_domain_cubit.freezed.dart';
part 'add_domain_state.dart';

class AddDomainCubit extends Cubit<AddDomainState> {
  AddDomainCubit({required this.addDomainRepo})
    : super(const AddDomainState.addDomainInitial());

  final AddDomainRepo addDomainRepo;

  Future<void> addDomain({
    required AddDomainRequestBody addDomainRequestBody,
  }) async {
    emit(const AddDomainState.addDomainLoading());
    final ApiResult result = await addDomainRepo.addDomain(
      body: addDomainRequestBody,
    );
    result.when(
      success: (data) {
        emit(const AddDomainState.addDomainSuccess());
      },
      failure: (apiErrorModel) async {
        emit(AddDomainState.addDomainFailure(apiErrorModel: apiErrorModel));
      },
    );
  }
}
