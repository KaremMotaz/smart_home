import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class Onboarding1CenterCard extends StatelessWidget {
  const Onboarding1CenterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(
        color: AppColors.lighterGrey,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AppAssets.home,
            width: 50,
            colorFilter: const ColorFilter.mode(
              AppColors.darkerbrown,
              BlendMode.srcIn,
            ),
          ),
          Text.rich(
            TextSpan(
              text: "One",
              style: AppStyles.bold20.copyWith(color: AppColors.darkerbrown),
              children: [
                TextSpan(
                  text: "touch",
                  style: AppStyles.semiBold20.copyWith(color: AppColors.brown),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
