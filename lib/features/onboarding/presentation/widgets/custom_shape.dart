import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/theming/assets_data.dart';
import '../../../../core/theming/colors_manager.dart';

class CustomShape extends StatelessWidget {
  const CustomShape({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AssetsData.shape,
      width: 90,
      colorFilter: const ColorFilter.mode(
        ColorsManager.darkerbrown,
        BlendMode.srcIn,
      ),
    );
  }
}
