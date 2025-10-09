import 'package:flutter/material.dart';
import 'package:smart_home/core/theming/assets_data.dart';
import 'package:smart_home/core/theming/colors_manager.dart';
import 'package:smart_home/core/theming/text_styles.dart';
import 'package:smart_home/features/auth/presentation/widgets/welcome_card.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100),
                Image.asset(AssetsData.smartHomeLogo, width: 170),
                Text(
                  "SST",
                  style: TextStyles.bold24.copyWith(
                    color: ColorsManager.darkBlue,
                  ),
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
          ),

          Align(alignment: Alignment.bottomCenter, child: WelcomeCard()),
        ],
      ),
    );
  }
}
