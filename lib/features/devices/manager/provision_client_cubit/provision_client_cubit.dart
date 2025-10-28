import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/core/networking/api_error_model.dart';
import 'package:smart_home/core/networking/api_result.dart';
import 'package:smart_home/features/devices/data/models/provision_client_request_body.dart';
import 'package:smart_home/features/devices/data/repos/provision_client_repo.dart';

part 'provision_client_state.dart';
part 'provision_client_cubit.freezed.dart';

class ProvisionClientCubit extends Cubit<ProvisionClientState> {
  ProvisionClientCubit({required this.provisionClientRepo})
    : super(const ProvisionClientState.provisionClientInitial());

  final ProvisionClientRepo provisionClientRepo;

  Future<void> provisionClient({
    required ProvisionClientRequestBody client,
  }) async {
    emit(const ProvisionClientState.provisionClientLoading());
    final ApiResult result = await provisionClientRepo.provisionClient(
      client: client,
    );
    result.when(
      success: (data) {
        emit(const ProvisionClientState.provisionClientSuccess());
      },
      failure: (apiErrorModel) async {
        emit(
          ProvisionClientState.provisionClientFailure(
            apiErrorModel: apiErrorModel,
          ),
        );
      },
    );
  }
}
