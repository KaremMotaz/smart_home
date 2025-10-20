import 'package:flutter/material.dart';
import 'custom_edit_field_widget.dart';

class EditProfileSection extends StatelessWidget {
  const EditProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          CustomEditFieldWidget(title: "First name", data: "Sarah"),
          CustomEditFieldWidget(title: "Last name", data: "Doe"),
          CustomEditFieldWidget(title: "Email", data: "SarahDoe2020@gmail.com"),
          CustomEditFieldWidget(title: "Phone", data: "01023454678"),
          CustomEditFieldWidget(title: "Password", data: "********"),
        ],
      ),
    );
  }
}
