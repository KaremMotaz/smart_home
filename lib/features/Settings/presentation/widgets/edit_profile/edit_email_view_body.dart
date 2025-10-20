import 'package:flutter/material.dart';
import 'package:smart_home/core/widgets/custom_header_section.dart';
import 'package:smart_home/core/widgets/form_container.dart';
import 'package:smart_home/features/Settings/presentation/widgets/edit_profile/edit_email_form.dart';

class EditEmailViewBody extends StatelessWidget {
  const EditEmailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHeaderSection(
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
