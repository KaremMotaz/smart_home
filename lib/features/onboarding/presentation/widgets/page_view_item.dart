import 'package:flutter/material.dart';

import '../../../../../core/theming/text_styles.dart';
import '../../models/onboarding_model.dart';
import 'custom_onboardin_shape.dart';
import 'onboarding_device_grid.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, required this.onboardingModel});
  final OnboardingModel onboardingModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          Text(
            onboardingModel.title,
            textAlign: TextAlign.center,
            style: TextStyles.bold22,
          ),
          if (onboardingModel.currentPageIndex == 0) ...[
            const Spacer(flex: 3),
            const OnboardingDeviceGrid(),
            const Spacer(flex: 3),
          ],
          if (onboardingModel.currentPageIndex == 1) ...[
            const Spacer(flex: 3),
            const CustomOnboardingShape(),
            const Spacer(flex: 3),
          ],
          if (onboardingModel.currentPageIndex == 2) const SizedBox(height: 10),
          Text(
            onboardingModel.description,
            textAlign: TextAlign.center,
            style: TextStyles.regular12,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
