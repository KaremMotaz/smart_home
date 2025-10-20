import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/core/networking/api_error_model.dart';
import 'package:smart_home/features/Settings/data/repos/settings_repo.dart';
import '../../../../core/networking/api_result.dart';
part 'log_out_state.dart';
part 'log_out_cubit.freezed.dart';

class LogOutCubit extends Cubit<LogOutState> {
  LogOutCubit({required this.settingsRepo})
    : super(const LogOutState.logOutInitial());
  final SettingsRepo settingsRepo;

  Future<void> logOut(context) async {
    emit(const LogOutState.logOutLoading());
    final ApiResult result = await settingsRepo.logout(context: context);
    result.when(
      success: (data) async {
        emit(const LogOutState.logOutSuccess());
      },
      failure: (apiErrorModel) async {
        emit(LogOutState.logOutFailure(apiErrorModel: apiErrorModel));
      },
    );
  }
}
