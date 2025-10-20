import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';

class CustomShape extends StatelessWidget {
  const CustomShape({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AppAssets.shape,
      width: 90,
      colorFilter: const ColorFilter.mode(
        AppColors.darkerbrown,
        BlendMode.srcIn,
      ),
    );
  }
}
