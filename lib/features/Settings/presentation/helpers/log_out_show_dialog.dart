import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/functions/build_snack_bar.dart';
import '../../../../core/functions/error_dialog.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/services/get_it_service.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/widgets/custom_dialog.dart';
import '../../data/repos/settings_repo.dart';
import '../../manager/log_out_cubit/log_out_cubit.dart';

Future<void> logOutShowDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return BlocProvider(
        create: (context) =>
            LogOutCubit(settingsRepo: getIt.get<SettingsRepo>()),
        child: Builder(
          builder: (context) {
            return BlocListener<LogOutCubit, LogOutState>(
              listener: (context, state) {
                state.whenOrNull(
                  logOutSuccess: () {
                    successSnackBar(
                      context: context,
                      message: "Logged out successfully",
                    );
                    GoRouter.of(context).pop();
                    GoRouter.of(context).go(Routes.loginView);
                  },
                  logOutFailure: (apiErrorModel) {
                    errorDialog(
                      context: context,
                      message: apiErrorModel.message,
                      error: apiErrorModel.error ?? "",
                    );
                    GoRouter.of(context).pop();
                  },
                );
              },
              child: CustomDialog<LogOutCubit, LogOutState>(
                buttonText: "Log Out",
                bodyContent: "Are you sure you want to log out?",
                title: "Log Out?",
                buttonColor: AppColors.darkRed,
                onPressed: () async {
                  await context.read<LogOutCubit>().logOut();
                },
                isLoading: (state) => state is LogOutLoading,
              ),
            );
          },
        ),
      );
    },
  );
}
