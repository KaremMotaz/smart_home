import 'package:flutter/material.dart';
import 'package:smart_home/core/helpers/get_user.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../widgets/profile/edit_profile_section.dart';
import '../widgets/profile/profile_image.dart';

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
        child: SizedBox(
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ProfileImage(),
              const SizedBox(height: 10),
              Text(
                "${getUser()?.firstName ?? "Unknown"} ${getUser()?.lastName ?? "Unknown"}",
                style: AppStyles.bold22,
              ),
              const SizedBox(height: 5),
              Text(getUser()?.email ?? "Unknown", style: AppStyles.regular14),
              const SizedBox(height: 25),
              const EditProfileSection(),
            ],
          ),
        ),
      ),
    );
  }
}
