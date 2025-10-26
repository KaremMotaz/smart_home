import 'package:flutter/material.dart';
import '../widgets/profile/user_account_data.dart';
import '../../../../core/theming/app_colors.dart';
import '../widgets/profile/edit_profile_section.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.orange2, elevation: 0),
      backgroundColor: AppColors.orange2,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        margin: const EdgeInsets.only(top: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: const SizedBox(
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              UserAccountData(),
              SizedBox(height: 25),
              EditProfileSection(),
            ],
          ),
        ),
      ),
    );
  }
}
