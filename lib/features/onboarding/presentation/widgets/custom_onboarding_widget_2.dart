import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smart_home/core/theming/assets_data.dart';
import 'package:smart_home/core/theming/colors_manager.dart';

class CustomOnboardingWidget2 extends StatelessWidget {
  const CustomOnboardingWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [Onboarding2CenterCard(), OffOnCard()]);
  }
}

class OffOnCard extends StatelessWidget {
  const OffOnCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: ColorsManager.darkerbrown,
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(
        AssetsData.offOn,
        width: 50,
        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
      ),
    );
  }
}

class Onboarding2CenterCard extends StatelessWidget {
  const Onboarding2CenterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
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

class ExpCard extends StatelessWidget {
  const ExpCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Column(
        children: [
          SvgPicture.asset(AssetsData.exp, width: 15),
          const SizedBox(height: 5),
          const SizedBox(
            width: 50,
            child: LinearProgressIndicator(
              color: Colors.amberAccent,
              backgroundColor: ColorsManager.lighterGrey,
            ),),
        ],
      ),
    );
  }
}

class CustomIconCard extends StatelessWidget {
  const CustomIconCard({
    super.key,
    required this.iconPath,
    required this.iconColor,
  });

  final String iconPath;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: SvgPicture.asset(
        iconPath,
        width: 15,
        colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
      ),
    );
  }
}
