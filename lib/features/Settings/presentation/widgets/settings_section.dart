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
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text("Settings", style: TextStyles.bold22),
        ),
        CustomSettingsItem(onTap: () {}, title: 'About App', icon: Icons.info),
        CustomSettingsItem(onTap: () {}, title: 'Logout', icon: Icons.logout),
      ],
    );
  }
}
