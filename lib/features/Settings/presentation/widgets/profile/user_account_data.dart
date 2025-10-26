import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/core/manager/user_cubit/user_cubit.dart';
import 'package:smart_home/core/models/user_data_response.dart';
import 'package:smart_home/core/theming/app_styles.dart';
import 'package:smart_home/features/Settings/presentation/widgets/profile/profile_image.dart';

class UserAccountData extends StatelessWidget {
  const UserAccountData({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserDataResponse?>(
      builder: (context, user) {
        return Column(
          children: [
            const ProfileImage(),
            const SizedBox(height: 10),
            Text(
              "${user?.firstName ?? "Unknown"} ${user?.lastName ?? "Unknown"}",
              style: AppStyles.bold22,
            ),
            const SizedBox(height: 5),
            Text(user?.email ?? "Unknown", style: AppStyles.regular14),
          ],
        );
      },
    );
  }
}
