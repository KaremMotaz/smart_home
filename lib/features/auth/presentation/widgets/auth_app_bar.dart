import 'package:flutter/material.dart';

import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';

class AuthAppBar extends StatelessWidget {
  const AuthAppBar({
    super.key,
    required this.onBackPressed,
    required this.onLabelPressed,
    required this.label,
  });

  final void Function()? onBackPressed;
  final void Function()? onLabelPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: onBackPressed,
          child: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: ColorsManager.darkerBlue,
          ),
        ),
        TextButton(
          onPressed: onLabelPressed,
          child: Text(
            label,
            style: TextStyles.bold16.copyWith(color: ColorsManager.darkerBlue),
          ),
        ),
      ],
    );
  }
}
