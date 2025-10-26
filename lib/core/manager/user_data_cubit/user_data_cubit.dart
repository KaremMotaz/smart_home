import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/core/manager/user_cubit/user_cubit.dart';
import '../../models/user_data_response.dart';
import '../../networking/api_error_model.dart';
import '../../networking/api_result.dart';
import '../../repos/user_data_repo.dart';
part 'user_data_state.dart';
part 'user_data_cubit.freezed.dart';

class UserDataCubit extends Cubit<UserDataState> {
  UserDataCubit({required this.userDataRepo, required this.userCubit})
    : super(const UserDataState.userDataLoading());

  final UserDataRepo userDataRepo;
  final UserCubit userCubit;

  Future<void> getUserData() async {
    final ApiResult result = await userDataRepo.getUserData();
    result.when(
      success: (userDataResponse) {
        userCubit.updateUser(userDataResponse: userDataResponse);
        emit(UserDataState.userDataSuccess(userDataResponse: userDataResponse));
      },
      failure: (apiErrorModel) {
        emit(UserDataState.userDataFailure(apiErrorModel: apiErrorModel));
      },
    );
  }
}
