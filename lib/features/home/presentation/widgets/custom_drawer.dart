import 'package:flutter/material.dart';
import 'package:smart_home/core/theming/text_styles.dart';

import '../../../../core/theming/assets_data.dart';
import '../../../../core/theming/colors_manager.dart';
import 'custom_divider.dart';
import 'custom_drawer_option.dart';
import 'drawer_list_view.dart';
import 'user_account.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 270,
      backgroundColor: Colors.transparent,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 50),
          padding: const EdgeInsets.only(top: 30, bottom: 30),
          decoration: const BoxDecoration(
            color: ColorsManager.darkbrown,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
          child: Column(
            children: [
              const UserAccount(),
              const SizedBox(height: 24),
              const CustomDivider(horizontalPadding: 20),
              const SizedBox(height: 7),
              const Expanded(child: DrawerListView()),
              CustomDrawerOption(
                icon: AssetsData.logoutIcon,
                title: 'Logout',
                textStyle: TextStyles.bold18.copyWith(color: Colors.white),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
