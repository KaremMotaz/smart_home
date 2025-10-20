import 'package:flutter/material.dart';
import 'package:smart_home/core/widgets/custom_header_section.dart';
import 'package:smart_home/core/widgets/form_container.dart';
import 'package:smart_home/features/Settings/presentation/widgets/edit_profile/edit_last_name_form.dart';

class EditLastNameViewBody extends StatelessWidget {
  const EditLastNameViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHeaderSection(
          appBarTitle: "Edit last name",
          title: "Edit last name",
          subtitle: "Update your personal last name.",
        ),
        Expanded(
          child: FormContainer(scrollable: false, child: EditLastNameForm()),
        ),
      ],
    );
  }
}
