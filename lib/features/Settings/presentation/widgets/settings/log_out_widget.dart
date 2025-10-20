import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/core/theming/app_colors.dart';
import 'package:smart_home/core/widgets/custom_dialog.dart';
import 'package:smart_home/features/Settings/manager/log_out_cubit/log_out_cubit.dart';
import 'package:smart_home/features/Settings/presentation/widgets/settings/custom_settings_item.dart';

class LogOutWidget extends StatelessWidget {
  const LogOutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSettingsItem(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return CustomDialog<LogOutCubit, LogOutState>(
              buttonText: "Log Out",
              bodyContent: "Are you sure you want to log out?",
              title: "Log Out?",
              buttonColor: AppColors.darkRed,
              onPressed: () async {
                await context.read<LogOutCubit>().logOut(context);
              },
              isLoading: (state) => state is LogOutLoading,
            );
          },
        );
      },
      title: 'Logout',
      icon: Icons.logout,
    );
  }
}