import 'package:flutter/material.dart';
import 'custom_shape.dart';
import 'off_on_card.dart';
import 'onboarding_2_center_card.dart';

class CustomOnboardingShape extends StatelessWidget {
  const CustomOnboardingShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.1,
      child: Transform.translate(
        offset: const Offset(-35, 0),
        child: const Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(bottom: -6, right: -86, child: CustomShape()),
            Onboarding2CenterCard(),
            Positioned(bottom: -25, right: -40, child: OffOnCard()),
          ],
        ),
      ),
    );
  }
}
