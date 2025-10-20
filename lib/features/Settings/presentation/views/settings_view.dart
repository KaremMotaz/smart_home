import 'package:flutter/material.dart';
import '../../../../core/theming/colors_manager.dart';
import '../widgets/settings/profile_section.dart';
import '../widgets/settings/settings_section.dart';
import '../../../home/presentation/widgets/custom_divider.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: ColorsManager.orange2, elevation: 0),
      backgroundColor: ColorsManager.orange2,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 25),
        margin: const EdgeInsets.only(top: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                ProfileSection(),
                SizedBox(height: 10),
                CustomDivider(color: ColorsManager.darkbrown),
              ],
            ),
            SizedBox(height: 20),
            SettingsSection(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
