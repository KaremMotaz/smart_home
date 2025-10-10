import 'package:flutter/material.dart';
import '../../../../core/theming/assets_data.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';

class LogoCard extends StatelessWidget {
  const LogoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AssetsData.smartHomeLogo, width: 170),
          Text(
            "SST",
            style: TextStyles.bold24.copyWith(color: ColorsManager.darkBlue),
          ),
          SizedBox(height: 5),
          Text(
            "Smart Solutions Technologies",
            style: TextStyles.semiBold16.copyWith(
              color: ColorsManager.darkBlue,
            ),
          ),
        ],
      ),
    );
  }
}
