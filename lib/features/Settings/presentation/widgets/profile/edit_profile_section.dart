import 'package:flutter/material.dart';
import 'package:smart_home/core/helpers/get_user.dart';
import 'custom_edit_field_widget.dart';

class EditProfileSection extends StatelessWidget {
  const EditProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          CustomEditFieldWidget(
            title: "First name",
            data: getUser()?.firstName ?? "Unknown",
          ),
          CustomEditFieldWidget(title: "Last name", data: getUser()?.lastName ?? "Unknown"),
          CustomEditFieldWidget(title: "Email", data: getUser()?.email ?? "Unknown"),
          CustomEditFieldWidget(
            title: "Phone",
            data: getUser()?.metadata.entries.first.key ?? "Unknown",
          ),
          const CustomEditFieldWidget(title: "Password", data: "********"),
        ],
      ),
    );
  }
}
