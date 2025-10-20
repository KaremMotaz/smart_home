import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../helpers/get_user.dart';
import '../../models/user_data_response.dart';
import '../../networking/api_error_model.dart';
import '../../networking/api_result.dart';
import '../../repos/user_data_repo.dart';
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
