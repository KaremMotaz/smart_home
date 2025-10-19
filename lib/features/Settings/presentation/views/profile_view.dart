import 'package:flutter/material.dart';
import 'package:smart_home/core/theming/colors_manager.dart';
import 'package:smart_home/core/theming/text_styles.dart';
import 'package:smart_home/features/Settings/presentation/widgets/edit_profile_section.dart';
import 'package:smart_home/features/Settings/presentation/widgets/profile_image.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: ColorsManager.orange2, elevation: 0),
      backgroundColor: ColorsManager.orange2,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        margin: const EdgeInsets.only(top: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height - 182,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ProfileImage(),
                SizedBox(height: 10),
                Text('Sarah Doe', style: TextStyles.bold22),
                SizedBox(height: 5),
                Text('SarahDoe2020@gmail.com', style: TextStyles.regular14),
                SizedBox(height: 25),
                EditProfileSection(),
                // Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
