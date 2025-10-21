import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/app_assets.dart';
import 'custom_drawer_option.dart';

class DrawerListView extends StatelessWidget {
  const DrawerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        CustomDrawerOption(
          icon: AppAssets.domainIcon,
          title: 'Manage Domains',
          onTap: () {
            GoRouter.of(context).pop();
            GoRouter.of(context).push(Routes.manageDomainsView);
          },
        ),
        CustomDrawerOption(
          icon: AppAssets.usersIcon,
          title: 'Manage Users',
          onTap: () {
            GoRouter.of(context).pop();
            GoRouter.of(context).push(Routes.manageUsersView);
          },
        ),
        CustomDrawerOption(
          icon: AppAssets.devicesIcon,
          title: 'Devices',
          onTap: () {
            GoRouter.of(context).pop();
            GoRouter.of(context).push(Routes.devicesView);
          },
        ),
        CustomDrawerOption(
          icon: AppAssets.roomsIcon,
          title: 'Rooms',
          onTap: () {
            GoRouter.of(context).pop();
            GoRouter.of(context).push(Routes.allRoomsView);
          },
        ),
        CustomDrawerOption(
          icon: AppAssets.soundIcon,
          title: 'Sound',
          onTap: () {
            GoRouter.of(context).pop();
            GoRouter.of(context).push(Routes.soundView);
          },
        ),
        CustomDrawerOption(
          icon: AppAssets.settingsIcon,
          title: 'Settings',
          onTap: () {
            GoRouter.of(context).pop();
            GoRouter.of(context).push(Routes.settingsView);
          },
        ),
        CustomDrawerOption(
          icon: AppAssets.helpIcon,
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
