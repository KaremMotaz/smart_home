import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/core/networking/api_error_model.dart';
import 'package:smart_home/core/networking/api_result.dart';
import 'package:smart_home/features/clients/data/models/create_client_request_body.dart';
import 'package:smart_home/features/clients/data/repos/create_client_repo.dart';
part 'create_client_state.dart';
part 'create_client_cubit.freezed.dart';

class CreateClientCubit extends Cubit<CreateClientState> {
  CreateClientCubit({required this.createClientRepo})
    : super(const CreateClientState.createClientInitial());

  final CreateClientRepo createClientRepo;

  Future<void> createClient({
    required CreateClientRequestBody createClientRequestBody,
  }) async {
    emit(const CreateClientState.createClientLoading());
    final ApiResult result = await createClientRepo.createClient(
      body: createClientRequestBody,
    );
    result.when(
      success: (data) {
        emit(const CreateClientState.createClientSuccess());
      },
      failure: (apiErrorModel) async {
        emit(
          CreateClientState.createClientFailure(apiErrorModel: apiErrorModel),
        );
      },
    );
  }
}
