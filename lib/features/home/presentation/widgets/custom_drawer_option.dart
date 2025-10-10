import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_home/core/theming/text_styles.dart';

class CustomDrawerOption extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback onTap;

  const CustomDrawerOption({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Colors.white.withAlpha(5),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              SvgPicture.asset(
                icon,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(width: 16),
              Text(
                title,
                style: TextStyles.semiBold16.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
