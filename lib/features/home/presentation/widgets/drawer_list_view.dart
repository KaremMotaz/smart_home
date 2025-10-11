import 'package:flutter/material.dart';

import '../../../../core/theming/assets_data.dart';
import 'custom_drawer_option.dart';

class DrawerListView extends StatelessWidget {
  const DrawerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
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
    );
  }
}
