import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/core/routing/routes.dart';
import 'package:smart_home/core/theming/assets_data.dart';
import 'package:smart_home/core/theming/colors_manager.dart';
import 'package:smart_home/core/theming/text_styles.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(Routes.profileView);
      },
      child: const Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: ColorsManager.lighterGrey,
            backgroundImage: AssetImage(AssetsData.member1),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sarah Doe', style: TextStyles.bold20),
              Text('SarahDoe2020@gmail.com', style: TextStyles.regular16),
            ],
          ),
        ],
      ),
    );
  }
}
