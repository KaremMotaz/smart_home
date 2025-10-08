import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/core/routing/routes.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';
import 'register_form.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final topPadding = MediaQuery.of(context).padding.top;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context).pop();
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: ColorsManager.darkerBlue,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        GoRouter.of(context).go(Routes.loginView);
                      },
                      child: Text(
                        "Login",
                        style: TextStyles.bold16.copyWith(
                          color: ColorsManager.darkerBlue,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  "Register",
                  style: TextStyles.bold24.copyWith(
                    color: ColorsManager.darkerBlue,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Register now and experience the comfort of a connected home at your fingertips",
                  style: TextStyles.medium14.copyWith(
                    color: ColorsManager.darkerBlue,
                  ),
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
          Container(
            height: screenHeight - topPadding - 150,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: const RegisterForm(),
          ),
        ],
      ),
    );
  }
}
