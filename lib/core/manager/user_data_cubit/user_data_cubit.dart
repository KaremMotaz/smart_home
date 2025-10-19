import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/core/helpers/get_user.dart';
import 'package:smart_home/core/models/user_data_response.dart';
import 'package:smart_home/core/networking/api_error_model.dart';
import 'package:smart_home/core/networking/api_result.dart';
import 'package:smart_home/core/repos/user_data_repo.dart';
part 'user_data_state.dart';
part 'user_data_cubit.freezed.dart';

class UserDataCubit extends Cubit<UserDataState> {
  UserDataCubit({required this.userDataRepo})
    : super(const UserDataState.userDataLoading());

  final UserDataRepo userDataRepo;

  Future<void> getUserData() async {
    final ApiResult result = await userDataRepo.getUserData();
    result.when(
      success: (userDataResponse) async {
        await saveUser(userDataResponse: userDataResponse);
        emit(UserDataState.userDataSuccess(userDataResponse: userDataResponse));
      },
      failure: (apiErrorModel) {
        emit(UserDataState.userDataFailure(apiErrorModel: apiErrorModel));
      },
    );
  }
}
