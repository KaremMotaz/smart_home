import 'package:flutter/material.dart';
import 'package:smart_home/core/widgets/custom_header_section.dart';
import 'package:smart_home/core/widgets/form_container.dart';
import 'package:smart_home/features/Settings/presentation/widgets/edit_profile/edit_first_name_form.dart';

class EditFirstNameViewBody extends StatelessWidget {
  const EditFirstNameViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHeaderSection(
          appBarTitle: "Edit first name",
          title: "Edit first name",
          subtitle: "Update your personal first name.",
        ),
        Expanded(
          child: FormContainer(scrollable: false, child: EditFirstNameForm()),
        ),
      ],
    );
  }
}
