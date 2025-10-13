import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/core/routing/routes.dart';
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
          onTap: () {
            GoRouter.of(context).pop();
            GoRouter.of(context).push(Routes.manageUsersView);
          },
        ),
        CustomDrawerOption(
          icon: AssetsData.devicesIcon,
          title: 'Devices',
          onTap: () {
            GoRouter.of(context).pop();
            GoRouter.of(context).push(Routes.devicesView);
          },
        ),
        CustomDrawerOption(
          icon: AssetsData.roomsIcon,
          title: 'Rooms',
          onTap: () {
            GoRouter.of(context).pop();
            GoRouter.of(context).push(Routes.allRoomsView);
          },
        ),
        CustomDrawerOption(
          icon: AssetsData.soundIcon,
          title: 'Sound',
          onTap: () {
            GoRouter.of(context).pop();
            GoRouter.of(context).push(Routes.soundView);
          },
        ),
        CustomDrawerOption(
          icon: AssetsData.settingsIcon,
          title: 'Settings',
          onTap: () {
            GoRouter.of(context).pop();
            GoRouter.of(context).push(Routes.settingsView);
          },
        ),
        CustomDrawerOption(
          icon: AssetsData.helpIcon,
          title: 'Help',
          onTap: () {
            GoRouter.of(context).pop();
            GoRouter.of(context).push(Routes.helpView);
          },
        ),
      ],
    );
  }
}
