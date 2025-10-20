import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/core/routing/routes.dart';
import '../../../../../core/theming/app_styles.dart';
import 'custom_settings_item.dart';

class SettingsSection extends StatelessWidget {
  const SettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Text("Settings", style: AppStyles.bold22),
        ),
        CustomSettingsItem(
          onTap: () {
            GoRouter.of(context).push(Routes.aboutView);
          },
          title: 'About',
          icon: Icons.info,
        ),
        CustomSettingsItem(onTap: () {}, title: 'Logout', icon: Icons.logout),
        CustomSettingsItem(
          onTap: () {},
          title: 'Delete Account',
          icon: Icons.delete,
        ),
      ],
    );
  }
}
