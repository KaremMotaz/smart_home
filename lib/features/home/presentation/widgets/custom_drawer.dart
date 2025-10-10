import 'package:flutter/material.dart';
import 'package:smart_home/core/theming/assets_data.dart';
import 'package:smart_home/core/theming/colors_manager.dart';
import 'package:smart_home/features/home/presentation/widgets/custom_drawer_option.dart';
import 'package:smart_home/features/home/presentation/widgets/drawer_list_view.dart';
import 'package:smart_home/features/home/presentation/widgets/user_account.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 270,
      backgroundColor: Colors.transparent,
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          height: 702,
          child: Container(
            padding: const EdgeInsets.only(top: 64, bottom: 64),
            decoration: BoxDecoration(
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
                const Divider(
                  color: Colors.white,
                  thickness: 0.3,
                  height: 0,
                  indent: 20,
                  endIndent: 20,
                ),
                const SizedBox(height: 7),
                const Expanded(child: DrawerListView()),
                CustomDrawerOption(
                  icon: AssetsData.logoutIcon,
                  title: 'Logout',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
