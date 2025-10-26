import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/manager/user_cubit/user_cubit.dart';
import '../../../../../core/models/user_data_response.dart';
import '../../../../../core/theming/app_styles.dart';
import 'profile_image.dart';

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
