import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/core/manager/user_cubit/user_cubit.dart';
import 'package:smart_home/core/models/user_data_response.dart';

import '../../../../../core/theming/app_styles.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlocBuilder<UserCubit, UserDataResponse?>(
          builder: (context, user) {
            return Text(
              "Hi ${user?.firstName ?? ''}",
              style: AppStyles.semiBold24,
            );
          },
        ),
        const SizedBox(height: 4),
        Text(
          "Welcome to your smart home",
          style: AppStyles.regular16.copyWith(color: const Color(0xffC3C3C3)),
        ),
      ],
    );
  }
}
