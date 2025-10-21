import 'package:flutter/material.dart';

import '../../../../../core/theming/app_colors.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.65,
      child: Switch(
        value: true,
        onChanged: (value) {},
        activeTrackColor: Colors.white,
        inactiveTrackColor: Colors.white,
        activeColor: AppColors.brown,
        inactiveThumbColor: Colors.brown,
      ),
    );
  }
}
