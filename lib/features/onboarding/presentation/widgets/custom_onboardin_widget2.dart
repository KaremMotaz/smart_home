import 'package:flutter/material.dart';
import 'package:smart_home/core/functions/degrees_to_radians.dart';
import 'package:smart_home/core/theming/colors_manager.dart';
import 'package:smart_home/features/onboarding/presentation/widgets/off_on_card.dart';
import 'package:smart_home/features/onboarding/presentation/widgets/onboarding_2_center_card.dart';

class CustomOnboardingWidget2 extends StatelessWidget {
  const CustomOnboardingWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.center,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(left: 100, bottom: -10, child: CustomShape()),
          Onboarding2CenterCard(),
          Positioned(bottom: -25, right: -40, child: OffOnCard()),
        ],
      ),
    );
  }
}

class CustomShape extends StatelessWidget {
  const CustomShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: degreesToRadians(degrees: 125),
      child: Container(
        height: 130,
        width: 110,
        decoration: BoxDecoration(
          color: ColorsManager.darkerbrown,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
