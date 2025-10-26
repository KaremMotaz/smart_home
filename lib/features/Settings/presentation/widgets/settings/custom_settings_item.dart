import 'package:flutter/material.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';

class CustomSettingsItem extends StatelessWidget {
  const CustomSettingsItem({
    super.key,
    required this.onTap,
    required this.title,
    required this.icon,
  });

  final Function() onTap;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        splashColor: AppColors.lighterGrey,
        highlightColor: AppColors.lighterGrey,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 25,
            right: 30,
            top: 12,
            bottom: 6,
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.darkbrown,
                ),
                child: Icon(icon, size: 20, color: Colors.white),
              ),
              const SizedBox(width: 10),
              Text(title, style: AppStyles.semiBold16),
              const Spacer(),
              const Icon(Icons.arrow_forward_ios, size: 18),
            ],
          ),
        ),
      ),
    );
  }
}
