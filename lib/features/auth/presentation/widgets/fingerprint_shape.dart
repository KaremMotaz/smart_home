import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/assets_data.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';

class FingerprintShape extends StatelessWidget {
  const FingerprintShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Place your finger to open",
          style: TextStyles.regular14.copyWith(color: const Color(0xff404344)),
        ),
        const SizedBox(height: 16),
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              height: 78,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [ColorsManager.darkerBlue, ColorsManager.darkBlue],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(AssetsData.fingerIcon),
            ),
            Positioned(
              bottom: -16,
              child: SvgPicture.asset(AssetsData.fingerShape, width: 220),
            ),
          ],
        ),
      ],
    );
  }
}
