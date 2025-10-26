import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_header.dart';
import '../../../../../core/widgets/form_container.dart';
import 'edit_phone_form.dart';

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
