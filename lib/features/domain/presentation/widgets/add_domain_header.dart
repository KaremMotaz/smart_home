import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class AddDomainHeader extends StatelessWidget {
  const AddDomainHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).pop();
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: AppColors.darkerBlue,
                ),
              ),
              const Spacer(),
              Text(
                "Add Project",
                style: AppStyles.bold18.copyWith(color: AppColors.darkerBlue),
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            "Add Project",
            style: AppStyles.bold24.copyWith(color: AppColors.darkerBlue),
          ),
          const SizedBox(height: 10),
          Text(
            "Add a new project to organize, connect, and control your smart devices effortlessly.",
            style: AppStyles.medium14.copyWith(color: AppColors.darkerBlue),
          ),
        ],
      ),
    );
  }
}
