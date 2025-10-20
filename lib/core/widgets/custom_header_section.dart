import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../theming/colors_manager.dart';
import '../theming/text_styles.dart';

class CustomHeaderSection extends StatelessWidget {
  const CustomHeaderSection({
    super.key,
    required this.title,
    required this.subtitle,
    required this.appBarTitle,
    this.titleColor = ColorsManager.darkerBlue,
    this.onBack,
  });

  final String title;
  final String subtitle;
  final String appBarTitle;
  final Color titleColor;
  final VoidCallback? onBack;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: onBack ?? () => GoRouter.of(context).pop(),
                child: Icon(Icons.arrow_back_ios, size: 20, color: titleColor),
              ),
              const Spacer(),
              Text(
                appBarTitle,
                style: TextStyles.bold18.copyWith(color: titleColor),
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(height: 20),
          Text(title, style: TextStyles.bold24.copyWith(color: titleColor)),
          const SizedBox(height: 10),
          Text(
            subtitle,
            style: TextStyles.medium14.copyWith(color: titleColor),
          ),
        ],
      ),
    );
  }
}
