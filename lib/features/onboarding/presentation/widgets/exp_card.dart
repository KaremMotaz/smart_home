import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';

class ExpCard extends StatelessWidget {
  const ExpCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(AppAssets.exp, width: 10),
          const SizedBox(height: 5),
          const SizedBox(
            width: 80,
            child: LinearProgressIndicator(
              value: 0.8,
              color: Colors.amberAccent,
              minHeight: 6,
              backgroundColor: AppColors.lighterGrey,
            ),
          ),
          const SizedBox(height: 5),
          const SizedBox(
            width: 80,
            child: LinearProgressIndicator(
              value: 0.9,
              color: Colors.blue,
              minHeight: 6,
              backgroundColor: AppColors.lighterGrey,
            ),
          ),
        ],
      ),
    );
  }
}
