import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/helpers/constants.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/manager/user_data_cubit/user_data_cubit.dart';
import '../../../../core/services/cache_helper.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../data/models/login_request_body.dart';
import '../../data/repos/login_repo.dart';
part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.loginRepo, required this.userDataCubit})
    : super(const LoginState.loginInitial());
  final LoginRepo loginRepo;
  final UserDataCubit userDataCubit;

  Future<void> login({required LoginRequestBody loginRequestBody}) async {
    emit(const LoginState.loginLoading());
    final ApiResult loginResult = await loginRepo.login(body: loginRequestBody);
    loginResult.when(
      success: (userDataResponse) async {
        checkToGetUserDataAfterLogin();
        emit(const LoginState.loginSuccess());
      },
      failure: (apiErrorModel) async {
        emit(LoginState.loginFailure(apiErrorModel: apiErrorModel));
      },
    );
  }

  void checkToGetUserDataAfterLogin() {
    String? jsonString = CacheHelper.getString(key: kUserData);
    if (jsonString.isNullOrEmpty()) {
      userDataCubit.getUserData();
    }
  }
}
