import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/colors_manager.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/widgets/app_text_button.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
      height: 310,
      decoration: const BoxDecoration(
        color: ColorsManager.orange2,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome",
            style: TextStyles.extraBold28.copyWith(
              color: ColorsManager.darkerBlue,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            "Welcome! Experience the comfort and convenience of a fully connected home.",
            style: TextStyles.medium14.copyWith(
              color: ColorsManager.darkerBlue,
            ),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withAlpha(50),
                        blurRadius: 5,
                        spreadRadius: 0.5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: AppTextButton(
                    onPressed: () => GoRouter.of(context).go(Routes.loginView),
                    buttonText: "Login",
                    borderRadius: 25,
                    borderColor: ColorsManager.darkerBlue,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withAlpha(50),
                        blurRadius: 5,
                        spreadRadius: 0.5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: AppTextButton(
                    onPressed: () =>
                        GoRouter.of(context).go(Routes.registerView),
                    buttonText: "Register",
                    borderRadius: 25,
                    textStyle: TextStyles.semiBold15.copyWith(
                      color: ColorsManager.darkerBlue,
                    ),
                    backgroundColor: Colors.white,
                    borderColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
