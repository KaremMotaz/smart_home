import 'package:flutter/material.dart';
import 'package:smart_home/features/Settings/presentation/widgets/custom_edit_profile_widget.dart';

class EditProfileSection extends StatelessWidget {
  const EditProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomEditProfileWidget(
          onPressed: () {
            // GoRouter.of(context).push(Routes.fingerLoginView);
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: const Text("Success"),
                  actions: [
                    TextButton(
                      child: const Text("OK"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              },
            );
          },
          title: "First name",
          data: "Sarah",
        ),
        CustomEditProfileWidget(
          onPressed: () {},
          title: "Last name",
          data: "Doe",
        ),
        CustomEditProfileWidget(
          onPressed: () {},
          title: "Email",
          data: "SarahDoe2020@gmail.com",
        ),
        CustomEditProfileWidget(
          onPressed: () {},
          title: "Phone",
          data: "01023454678",
        ),
        CustomEditProfileWidget(
          onPressed: () {},
          title: "Password",
          data: "********",
        ),
      ],
    );
  }
}
