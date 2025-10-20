import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/core/helpers/get_user.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          GoRouter.of(context).push(Routes.profileView);
        },
        splashColor: AppColors.lighterGrey,
        highlightColor: AppColors.lighterGrey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundColor: AppColors.lighterGrey,
                backgroundImage: AssetImage(AppAssets.member1),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${getUser()?.firstName ?? "Unknown"} ${getUser()?.lastName ?? "Unknown"}",
                    style: AppStyles.bold20,
                  ),
                  Text(
                    getUser()?.email ?? "Unknown",
                    style: AppStyles.regular16,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
