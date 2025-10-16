import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/theming/assets_data.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';

class Onboarding1CenterCard extends StatelessWidget {
  const Onboarding1CenterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(
        color: ColorsManager.lighterGrey,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AssetsData.home,
            width: 50,
            colorFilter: const ColorFilter.mode(
              ColorsManager.darkerbrown,
              BlendMode.srcIn,
            ),
          ),
          Text.rich(
            TextSpan(
              text: "One",
              style: TextStyles.bold20.copyWith(
                color: ColorsManager.darkerbrown,
              ),
              children: [
                TextSpan(
                  text: "touch",
                  style: TextStyles.semiBold20.copyWith(
                    color: ColorsManager.brown,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
