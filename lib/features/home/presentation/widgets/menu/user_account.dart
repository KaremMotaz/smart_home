import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/core/manager/user_cubit/user_cubit.dart';
import 'package:smart_home/core/models/user_data_response.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/widgets/app_text_button.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundColor: AppColors.lighterGrey,
            backgroundImage: AssetImage(AppAssets.member3),
          ),
          const SizedBox(width: 8),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocBuilder<UserCubit, UserDataResponse?>(
                builder: (context, user) {
                  return Transform.translate(
                    offset: const Offset(0, 6),
                    child: Text(
                      'Hi ${user?.firstName ?? ''}',
                      style: AppStyles.semiBold20.copyWith(color: Colors.white),
                    ),
                  );
                },
              ),
              AppTextButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                  GoRouter.of(context).push(Routes.profileView);
                },
                buttonText: 'Edit Profile',
                buttonHeight: 25,
                buttonWidth: 103,
                backgroundColor: AppColors.darkbrown,
                borderRadius: 40,
                borderWidth: 2,
                verticalPadding: 2,
                textStyle: AppStyles.semiBold14.copyWith(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
