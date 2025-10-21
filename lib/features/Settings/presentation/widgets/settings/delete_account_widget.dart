import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/core/functions/build_snack_bar.dart';
import 'package:smart_home/core/functions/error_dialog.dart';
import 'package:smart_home/core/routing/routes.dart';
import 'package:smart_home/core/services/get_it_service.dart';
import 'package:smart_home/core/theming/app_colors.dart';
import 'package:smart_home/core/widgets/custom_dialog.dart';
import 'package:smart_home/features/Settings/data/repos/settings_repo.dart';
import 'package:smart_home/features/Settings/manager/delete_account_cubit/delete_account_cubit.dart';
import 'package:smart_home/features/Settings/presentation/widgets/settings/custom_settings_item.dart';

class DeleteAccountWidget extends StatelessWidget {
  const DeleteAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSettingsItem(
      onTap: () {
        GoRouter.of(context).push(Routes.fingerLoginView);
        showDialog(
          context: context,
          builder: (context) {
            return BlocProvider(
              create: (context) =>
                  DeleteAccountCubit(settingsRepo: getIt.get<SettingsRepo>()),
              child: Builder(
                builder: (context) {
                  return BlocListener<DeleteAccountCubit, DeleteAccountState>(
                    listener: (context, state) {
                      state.whenOrNull(
                        deleteAccountSuccess: () {
                          successSnackBar(
                            context: context,
                            message: "Deleted account successfully",
                          );
                          GoRouter.of(context).pop();
                          GoRouter.of(context).go(Routes.loginView);
                        },
                        deleteAccountFailure: (apiErrorModel) {
                          errorDialog(
                            context: context,
                            message: apiErrorModel.message,
                            error: apiErrorModel.error ?? "",
                          );
                          GoRouter.of(context).pop();
                        },
                      );
                    },
                    child: CustomDialog<DeleteAccountCubit, DeleteAccountState>(
                      buttonText: "Delete Account",
                      bodyContent:
                          "Are you sure you want to delete your account?",
                      title: "Log Out?",
                      buttonColor: AppColors.darkRed,
                      onPressed: () async {
                        await context.read<DeleteAccountCubit>().deleteUser();
                      },
                      isLoading: (state) => state is DeleteAccountLoading,
                    ),
                  );
                },
              ),
            );
          },
        );
      },
      title: 'Delete Account',
      icon: Icons.delete,
    );
  }
}
