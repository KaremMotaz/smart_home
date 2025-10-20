import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';
import '../auth_app_bar.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AuthAppBar(
            onBackPressed: () {
              GoRouter.of(context).go(Routes.welcomeView);
            },
            onLabelPressed: () {
              GoRouter.of(context).push(Routes.registerView);
            },
            label: 'Register',
          ),
          const SizedBox(height: 20),
          Text(
            "Login",
            style: AppStyles.bold24.copyWith(color: AppColors.darkerBlue),
          ),
          const SizedBox(height: 10),
          Text(
            "Login now and take control of your smart home effortlessly, all from the palm of your hand.",
            style: AppStyles.medium14.copyWith(color: AppColors.darkerBlue),
          ),
        ],
      ),
    );
  }
}
