import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_header.dart';
import '../../../../../core/widgets/form_container.dart';
import 'edit_email_form.dart';

class EditEmailViewBody extends StatelessWidget {
  const EditEmailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHeader(
          appBarTitle: "Edit email",
          title: "Edit email",
          subtitle: "Update your personal email.",
        ),
        Expanded(
          child: FormContainer(scrollable: false, child: EditEmailForm()),
        ),
      ],
    );
  }
}
