import 'package:flutter/material.dart';

import '../../../../core/theming/app_styles.dart';

class CustomDrawerOption extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback onTap;
  final TextStyle? textStyle;

  const CustomDrawerOption({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Colors.white.withAlpha(5),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, bottom: 18, top: 18),
          child: Row(
            children: [
              Image.asset(icon, width: 24),
              const SizedBox(width: 16),
              Text(
                title,
                style:
                    textStyle ??
                    AppStyles.semiBold16.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
