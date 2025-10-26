import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/manager/user_cubit/user_cubit.dart';
import '../../../../core/services/get_it_service.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/widgets/custom_divider.dart';
import '../widgets/settings/profile_section.dart';
import '../widgets/settings/settings_section.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.orange2, elevation: 0),
      backgroundColor: AppColors.orange2,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 25),
        margin: const EdgeInsets.only(top: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                const SizedBox(height: 10),
                BlocProvider.value(
                  value: getIt<UserCubit>(),
                  child: const ProfileSection(),
                ),
                const SizedBox(height: 10),
                const CustomDivider(
                  color: AppColors.darkbrown,
                  horizontalPadding: 25,
                ),
              ],
            ),
            const SizedBox(height: 20),
            const SettingsSection(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
