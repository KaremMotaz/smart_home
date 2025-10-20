import 'package:flutter/material.dart';
import 'package:smart_home/core/widgets/custom_header_section.dart';
import 'package:smart_home/core/widgets/form_container.dart';
import 'package:smart_home/features/Settings/presentation/widgets/edit_profile/edit_password_form.dart';

class EditPasswordViewBody extends StatelessWidget {
  const EditPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHeaderSection(
          appBarTitle: "Change Password",
          title: "Change Password",
          subtitle: "Change your personal password.",
        ),
        Expanded(
          child: FormContainer(scrollable: false, child: EditPasswordForm()),
        ),
      ],
    );
  }
}
