import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../data/repos/settings_repo.dart';
part 'delete_account_state.dart';
part 'delete_account_cubit.freezed.dart';

class DeleteAccountCubit extends Cubit<DeleteAccountState> {
  DeleteAccountCubit({required this.settingsRepo})
    : super(const DeleteAccountState.deleteAccountInitial());
  final SettingsRepo settingsRepo;

  Future<void> deleteUser() async {
    emit(const DeleteAccountState.deleteAccountLoading());
    final ApiResult result = await settingsRepo.deleteUser();
    result.when(
      success: (data) async {
        emit(const DeleteAccountState.deleteAccountSuccess());
      },
      failure: (apiErrorModel) async {
        emit(
          DeleteAccountState.deleteAccountFailure(apiErrorModel: apiErrorModel),
        );
      },
    );
  }
}
