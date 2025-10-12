import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/core/networking/api_error_model.dart';
import 'package:smart_home/core/networking/api_result.dart';
import 'package:smart_home/features/auth/data/models/login_request_body.dart';
import 'package:smart_home/features/auth/data/repos/login_repo.dart';
part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.loginRepo})
    : super(const LoginState.loginInitial());
  final LoginRepo loginRepo;

  Future<void> login({required LoginRequestBody loginRequestBody}) async {
    emit(const LoginState.loginLoading());
    final ApiResult result = await loginRepo.login(body: loginRequestBody);
    result.when(
      success: (data) {
        emit(const LoginState.loginSuccess());
      },
      failure: (apiErrorModel) async {
        emit(LoginState.loginFailure(apiErrorModel: apiErrorModel));
      },
    );
  }
}
