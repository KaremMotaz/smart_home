import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smart_home/core/functions/degrees_to_radians.dart';
import 'package:smart_home/core/theming/colors_manager.dart';

class DeviceIconCard extends StatelessWidget {
  const DeviceIconCard({
    super.key,
    required this.iconPath,
    this.rotationAngle = 0,
    required this.borderRadius,
  });
  final String iconPath;
  final double rotationAngle;
  final BorderRadiusGeometry borderRadius;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: degreesToRadians(degrees: rotationAngle),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: ColorsManager.darkerbrown,
          borderRadius: borderRadius,
        ),
        child: Transform.rotate(
          angle: degreesToRadians(degrees: 0 - rotationAngle),
          child: SvgPicture.asset(
            iconPath,
            width: 28,
            colorFilter: const ColorFilter.mode(
              ColorsManager.lighterGrey,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
