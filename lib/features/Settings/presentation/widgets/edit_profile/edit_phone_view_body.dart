import 'package:flutter/material.dart';
import 'package:smart_home/core/widgets/custom_header.dart';
import 'package:smart_home/core/widgets/form_container.dart';
import 'package:smart_home/features/Settings/presentation/widgets/edit_profile/edit_phone_form.dart';

class EditPhoneViewBody extends StatelessWidget {
  const EditPhoneViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHeader(
          appBarTitle: "Edit Phone number",
          title: "Edit Phone number",
          subtitle: "Update your personal phone number.",
        ),
        Expanded(
          child: FormContainer(scrollable: false, child: EditPhoneForm()),
        ),
      ],
    );
  }
}
