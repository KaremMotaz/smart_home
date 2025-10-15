import 'package:flutter/material.dart';
import 'package:smart_home/features/onboarding/presentation/widgets/onboarding_device_grid.dart';
import 'package:smart_home/features/onboarding/presentation/widgets/custom_onboarding_widget_2.dart';
import '../../../../../core/theming/text_styles.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.title,
    required this.description,
    required this.currentPageIndex,
  });
  final String title;
  final String description;
  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          Text(title, textAlign: TextAlign.center, style: TextStyles.bold22),
          const SizedBox(height: 10),
          if (currentPageIndex == 0) const OnboardingDeviceGrid(),
          if (currentPageIndex == 1) const CustomOnboardingWidget2(),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyles.regular12,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
