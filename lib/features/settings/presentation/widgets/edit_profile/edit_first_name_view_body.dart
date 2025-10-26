import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_header.dart';
import '../../../../../core/widgets/form_container.dart';
import 'edit_first_name_form.dart';

class EditFirstNameViewBody extends StatelessWidget {
  const EditFirstNameViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHeader(
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
