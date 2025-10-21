import 'package:flutter/material.dart';
import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';

class DomainCard extends StatelessWidget {
  const DomainCard({
    super.key,
    required this.name,
    required this.alias,
    required this.isSelected,
    required this.onTap,
  });

  final String name;
  final String alias;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? AppColors.grey : Colors.white,
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.darkerbrown.withAlpha(63),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: const DecorationImage(
                    image: AssetImage(AppAssets.smartHome1),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(color: AppColors.darkerbrown, width: 2),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                name,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: AppStyles.bold18,
              ),
              const SizedBox(height: 6),
              Text(
                alias,
                textAlign: TextAlign.center,
                style: AppStyles.semiBold14.copyWith(color: AppColors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
