import 'package:flutter/material.dart';
import 'package:smart_home/core/theming/colors_manager.dart';
import 'package:smart_home/features/Settings/presentation/widgets/profile_section.dart';
import 'package:smart_home/features/Settings/presentation/widgets/settings_section.dart';
import 'package:smart_home/features/home/presentation/widgets/custom_divider.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: ColorsManager.orange2, elevation: 0),
      backgroundColor: ColorsManager.orange2,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
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
            ProfileSection(),
            SizedBox(height: 20),
            CustomDivider(color: ColorsManager.darkbrown),
            SizedBox(height: 20),
            SettingsSection(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
