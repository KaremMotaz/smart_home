import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:smart_home/core/networking/api_result.dart';
import 'package:smart_home/features/auth/data/models/register_request_body.dart';
import 'package:smart_home/features/auth/data/repos/register_repo.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit({required this.registerRepo}) : super(RegisterInitialState());

  final RegisterRepo registerRepo;

  Future<void> register({
    required RegisterRequestBody registerRequestBody,
  }) async {
    emit(RegisterLoadingState());
    final ApiResult result = await registerRepo.register(
      body: registerRequestBody,
    );
    result.when(
      success: (data) {
        emit(RegisterSuccessState());
      },
      failure: (error) async {
        emit(
          RegisterFailureState(
            error: error.error ?? "",
            message: error.message,
          ),
        );
      },
    );
  }
}
