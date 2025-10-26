import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../theming/app_colors.dart';
import '../theming/app_styles.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
    required this.title,
    required this.subtitle,
    required this.appBarTitle,
    this.titleColor = AppColors.darkerBlue,
    this.onBack,
  });

  final String title;
  final String subtitle;
  final String appBarTitle;
  final Color titleColor;
  final VoidCallback? onBack;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: onBack ?? () => GoRouter.of(context).pop(),
                child: Icon(Icons.arrow_back_ios, size: 20, color: titleColor),
              ),
              const Spacer(),
              Text(
                appBarTitle,
                style: AppStyles.bold18.copyWith(color: titleColor),
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(height: 20),
          Text(title, style: AppStyles.bold24.copyWith(color: titleColor)),
          const SizedBox(height: 10),
          Text(subtitle, style: AppStyles.medium14.copyWith(color: titleColor)),
        ],
      ),
    );
  }
}
