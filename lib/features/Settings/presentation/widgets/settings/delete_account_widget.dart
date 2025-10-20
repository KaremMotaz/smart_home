import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/core/theming/app_colors.dart';
import 'package:smart_home/core/widgets/custom_dialog.dart';
import 'package:smart_home/features/Settings/manager/delete_account_cubit/delete_account_cubit.dart';
import 'package:smart_home/features/Settings/presentation/widgets/settings/custom_settings_item.dart';

class DeleteAccountWidget extends StatelessWidget {
  const DeleteAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSettingsItem(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return CustomDialog<DeleteAccountCubit, DeleteAccountState>(
              buttonText: "Delete Account",
              bodyContent: "Are you sure you want to delete your account?",
              title: "Log Out?",
              buttonColor: AppColors.darkRed,
              onPressed: () async {
                await context.read<DeleteAccountCubit>().deleteUser();
              },
              isLoading: (state) => state is DeleteAccountLoading,
            );
          },
        );
      },
      title: 'Delete Account',
      icon: Icons.delete,
    );
  }
}