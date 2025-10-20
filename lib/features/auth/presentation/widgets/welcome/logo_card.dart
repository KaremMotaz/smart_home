import 'package:flutter/material.dart';

import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';

class LogoCard extends StatelessWidget {
  const LogoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AppAssets.smartHomeLogo, width: 170),
          Text(
            "SST",
            style: AppStyles.bold24.copyWith(color: AppColors.darkBlue),
          ),
          const SizedBox(height: 5),
          Text(
            "Smart Solutions Technologies",
            style: AppStyles.semiBold16.copyWith(color: AppColors.darkBlue),
          ),
        ],
      ),
    );
  }
}
