import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:smart_home/core/networking/api_error_model.dart';
import 'package:smart_home/core/networking/api_result.dart';
import 'package:smart_home/features/auth/data/models/login_request_body.dart';
import 'package:smart_home/features/auth/data/repos/login_repo.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.loginRepo}) : super(LoginInitialState());
  final LoginRepo loginRepo;

  Future<void> login({required LoginRequestBody loginRequestBody}) async {
    emit(LoginLoadingState());
    final ApiResult result = await loginRepo.login(body: loginRequestBody);
    result.when(
      success: (data) {
        emit(LoginSuccessState());
      },
      failure: (apiErrorModel) async {
        emit(LoginFailureState(apiErrorModel: apiErrorModel));
      },
    );
  }
}
