import 'package:flutter/material.dart';
import 'package:smart_home/core/theming/assets_data.dart';
import 'package:smart_home/core/theming/colors_manager.dart';
import 'package:smart_home/core/theming/text_styles.dart';
import 'package:smart_home/core/widgets/app_text_button.dart';
import 'package:smart_home/features/home/presentation/widgets/custom_drawer_option.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 270,
      child: Container(
        padding: const EdgeInsets.only(top: 64, bottom: 64),
        color: ColorsManager.darkbrown,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: ColorsManager.lighterGrey,
                    backgroundImage: const AssetImage(AssetsData.member3),
                  ),
                  SizedBox(width: 8),
                  Container(
                    color: Colors.red,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Hi Dakolo',
                          style: TextStyles.semiBold20.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 4),
                        AppTextButton(
                          onPressed: () {},
                          buttonText: 'Edit Profile',
                          buttonHeight: 24,
                          backgroundColor: ColorsManager.darkbrown,
                          borderRadius: 40,
                          borderWidth: 4,
                          verticalPadding: 0,
                          textStyle: TextStyles.semiBold14.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: const Divider(color: Colors.white, thickness: 1),
            ),
            Expanded(
              child: Column(
                children: [
                  CustomDrawerOption(
                    icon: AssetsData.usersIcon,
                    title: 'Manage Users',
                    onTap: () {},
                  ),
                  CustomDrawerOption(
                    icon: AssetsData.devicesIcon,
                    title: 'Devices',
                    onTap: () {},
                  ),
                  CustomDrawerOption(
                    icon: AssetsData.roomsIcon,
                    title: 'Rooms',
                    onTap: () {},
                  ),
                  CustomDrawerOption(
                    icon: AssetsData.soundIcon,
                    title: 'Sound',
                    onTap: () {},
                  ),
                  CustomDrawerOption(
                    icon: AssetsData.settingsIcon,
                    title: 'Settings',
                    onTap: () {},
                  ),
                  CustomDrawerOption(
                    icon: AssetsData.helpIcon,
                    title: 'Help',
                    onTap: () {},
                  ),
                ],
              ),
            ),
            CustomDrawerOption(
              icon: AssetsData.logoutIcon,
              title: 'Logout',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
