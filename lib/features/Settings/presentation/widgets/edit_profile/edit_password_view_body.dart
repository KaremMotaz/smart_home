import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_header.dart';
import '../../../../../core/widgets/form_container.dart';
import 'edit_password_form.dart';

class EditPasswordViewBody extends StatelessWidget {
  const EditPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHeader(
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
