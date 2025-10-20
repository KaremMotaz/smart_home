import 'package:flutter/material.dart';
import '../../../../core/routing/routes.dart';
import 'custom_edit_profile_widget.dart';

class EditProfileSection extends StatelessWidget {
  const EditProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomEditProfileWidget(
          route: Routes.changeFirstNameView,
          title: "First name",
          data: "Sarah",
        ),
        CustomEditProfileWidget(
          route: Routes.changeLastNameView,
          title: "Last name",
          data: "Doe",
        ),
        CustomEditProfileWidget(
          route: Routes.changeEmailView,
          title: "Email",
          data: "SarahDoe2020@gmail.com",
        ),
        CustomEditProfileWidget(
          route: Routes.changePhoneView,
          title: "Phone",
          data: "01023454678",
        ),
        CustomEditProfileWidget(
          route: Routes.changePasswordView,
          title: "Password",
          data: "********",
        ),
      ],
    );
  }
}
