import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../data/models/register_request_body.dart';
import '../../data/repos/register_repo.dart';
part 'register_state.dart';
part 'register_cubit.freezed.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit({required this.registerRepo})
    : super(const RegisterState.registerInitial());

  final RegisterRepo registerRepo;
  String? phoneNumber;

  void setPhoneNumber(String number) {
    phoneNumber = number;
  }

  Future<void> register({
    required RegisterRequestBody registerRequestBody,
  }) async {
    emit(const RegisterState.registerLoading());
    final ApiResult result = await registerRepo.register(
      body: registerRequestBody,
    );
    result.when(
      success: (data) {
        emit(const RegisterState.registerSuccess());
      },
      failure: (apiErrorModel) async {
        emit(RegisterState.registerFailure(apiErrorModel: apiErrorModel));
      },
    );
  }
}
