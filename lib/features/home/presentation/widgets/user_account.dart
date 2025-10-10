import 'package:flutter/material.dart';
import '../../../../core/theming/assets_data.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../../core/widgets/app_text_button.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: ColorsManager.lighterGrey,
            backgroundImage: const AssetImage(AssetsData.member3),
          ),
          SizedBox(width: 8),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Transform.translate(
                offset: Offset(0, 6),
                child: Text(
                  'Hi Dakolo',
                  style: TextStyles.semiBold20.copyWith(color: Colors.white),
                ),
              ),
              AppTextButton(
                onPressed: () {},
                buttonText: 'Edit Profile',
                buttonHeight: 25,
                buttonWidth: 103,
                backgroundColor: ColorsManager.darkbrown,
                borderRadius: 40,
                borderWidth: 2,
                verticalPadding: 2,
                textStyle: TextStyles.semiBold14.copyWith(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
