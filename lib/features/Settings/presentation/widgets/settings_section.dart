import 'package:flutter/material.dart';
import 'package:smart_home/core/theming/text_styles.dart';
import 'package:smart_home/features/Settings/presentation/widgets/custom_settings_item.dart';

class SettingsSection extends StatelessWidget {
  const SettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Settings", style: TextStyles.bold22),
        const SizedBox(height: 25),
        CustomSettingsItem(
          onTap: () {},
          title: 'Change Password',
          icon: Icons.lock,
        ),
        const SizedBox(height: 25),
        CustomSettingsItem(onTap: () {}, title: 'About App', icon: Icons.info),
        const SizedBox(height: 25),
        CustomSettingsItem(onTap: () {}, title: 'Logout', icon: Icons.logout),
      ],
    );
  }
}
