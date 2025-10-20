import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';

class FingerprintShape extends StatelessWidget {
  const FingerprintShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Place your finger to open",
          style: AppStyles.regular14.copyWith(color: const Color(0xff404344)),
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
                  colors: [AppColors.darkerBlue, AppColors.darkBlue],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(AppAssets.fingerIcon),
            ),
            Positioned(
              bottom: -16,
              child: SvgPicture.asset(AppAssets.fingerShape, width: 220),
            ),
          ],
        ),
      ],
    );
  }
}
