import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/core/routing/routes.dart';
import 'package:smart_home/core/theming/colors_manager.dart';
import 'package:smart_home/core/theming/text_styles.dart';
import 'package:smart_home/features/auth/presentation/widgets/auth_app_bar.dart';

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
            style: TextStyles.bold24.copyWith(color: ColorsManager.darkerBlue),
          ),
          const SizedBox(height: 10),
          Text(
            "Login now and take control of your smart home effortlessly, all from the palm of your hand.",
            style: TextStyles.medium14.copyWith(
              color: ColorsManager.darkerBlue,
            ),
          ),
        ],
      ),
    );
  }
}
