import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';
import '../auth_app_bar.dart';

class RegisterHeader extends StatelessWidget {
  const RegisterHeader({super.key});

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
              GoRouter.of(context).go(Routes.loginView);
            },
            label: "Login",
          ),
          const SizedBox(height: 20),
          Text(
            "Register",
            style: AppStyles.bold24.copyWith(color: AppColors.darkerBlue),
          ),
          const SizedBox(height: 10),
          Text(
            "Register now and experience the comfort of a connected home at your fingertips",
            style: AppStyles.medium14.copyWith(color: AppColors.darkerBlue),
          ),
        ],
      ),
    );
  }
}
