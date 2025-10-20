import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/assets_data.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          GoRouter.of(context).push(Routes.profileView);
        },
        splashColor: ColorsManager.lighterGrey,
        highlightColor: ColorsManager.lighterGrey,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Row(
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
        ),
      ),
    );
  }
}
