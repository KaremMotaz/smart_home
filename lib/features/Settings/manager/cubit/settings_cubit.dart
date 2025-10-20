import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../data/repos/settings_repo.dart';
part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit({required this.settingsRepo})
    : super(const SettingsState.settingsInitial());
  final SettingsRepo settingsRepo;

  Future<void> deleteUser() async {
    emit(const SettingsState.settingsInitial());
    final ApiResult result = await settingsRepo.deleteUser();
    result.when(
      success: (data) async {
        emit(const SettingsState.settingsSuccess());
      },
      failure: (apiErrorModel) async {
        emit(SettingsState.settingsFailure(apiErrorModel: apiErrorModel));
      },
    );
  }
}
