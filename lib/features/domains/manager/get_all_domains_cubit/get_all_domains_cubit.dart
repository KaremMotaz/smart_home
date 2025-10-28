import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/functions/load_saved_domain_index.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../data/models/get_all_domains_response.dart';
import '../../data/repos/get_all_domains_repo.dart';
part 'get_all_domains_cubit.freezed.dart';
part 'get_all_domains_state.dart';

class GetAllDomainsCubit extends Cubit<GetAllDomainsState> {
  GetAllDomainsCubit({required this.getAllDomainsRepo})
    : super(const GetAllDomainsState.getAllDomainsLoading());

  final GetAllDomainsRepo getAllDomainsRepo;

  Future<void> getAllDomains() async {
    final ApiResult result = await getAllDomainsRepo.getAllDomains();
    result.when(
      success: (getAllDomainsResponseBody) {
        final savedIndex = loadSavedDomainIndex();
        emit(
          GetAllDomainsState.getAllDomainsSuccess(
            getAllDomainsResponseBody: getAllDomainsResponseBody,
            selectedIndex: savedIndex ?? -1,
          ),
        );
      },
      failure: (apiErrorModel) async {
        emit(
          GetAllDomainsState.getAllDomainsFailure(apiErrorModel: apiErrorModel),
        );
      },
    );
  }

  void selectDomain(int index) {
    state.maybeWhen(
      getAllDomainsSuccess: (body, selectedIndex) {
        emit(
          GetAllDomainsState.getAllDomainsSuccess(
            getAllDomainsResponseBody: body,
            selectedIndex: index,
          ),
        );
      },
      orElse: () {},
    );
  }
}
