import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_header.dart';
import '../../../../../core/widgets/form_container.dart';
import 'edit_last_name_form.dart';

class EditLastNameViewBody extends StatelessWidget {
  const EditLastNameViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHeader(
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
