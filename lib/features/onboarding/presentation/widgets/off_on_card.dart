import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/theming/assets_data.dart';
import '../../../../core/theming/colors_manager.dart';

class OffOnCard extends StatelessWidget {
  const OffOnCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: ColorsManager.darkerbrown,
            shape: BoxShape.circle,
            border: Border.fromBorderSide(
              BorderSide(color: Colors.white, width: 3),
            ),
          ),
          child: SvgPicture.asset(
            AssetsData.offOn,
            width: 70,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),

        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(20),
                blurRadius: 8,
                spreadRadius: -4,
                offset: const Offset(4, 4),
              ),
            ],
          ),
          child: ClipOval(
            child: Container(
              decoration: const BoxDecoration(color: Colors.transparent),
            ),
          ),
        ),
      ],
    );
  }
}
