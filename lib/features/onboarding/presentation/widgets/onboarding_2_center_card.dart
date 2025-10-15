import 'package:flutter/material.dart';
import 'package:smart_home/core/theming/assets_data.dart';
import 'package:smart_home/core/theming/colors_manager.dart';
import 'package:smart_home/features/onboarding/presentation/widgets/custom_icon_card.dart';
import 'package:smart_home/features/onboarding/presentation/widgets/exp_card.dart';

class Onboarding2CenterCard extends StatelessWidget {
  const Onboarding2CenterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 111,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: ColorsManager.lighterGrey,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: const Column(
        children: [
          Row(
            children: [
              CustomIconCard(iconPath: AssetsData.snow, iconColor: Colors.blue),
              SizedBox(width: 8),
              CustomIconCard(
                iconPath: AssetsData.sun,
                iconColor: Colors.yellow,
              ),
              SizedBox(width: 8),
              CustomIconCard(
                iconPath: AssetsData.volume,
                iconColor: Colors.grey,
              ),
            ],
          ),
          SizedBox(height: 8),
          ExpCard(),
        ],
      ),
    );
  }
}
