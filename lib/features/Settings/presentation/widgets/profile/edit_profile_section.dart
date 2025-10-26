import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/manager/user_cubit/user_cubit.dart';
import '../../../../../core/models/user_data_response.dart';
import 'custom_edit_field_widget.dart';

class EditProfileSection extends StatelessWidget {
  const EditProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserDataResponse?>(
      builder: (context, user) {
        return Expanded(
          child: ListView(
            children: [
              CustomEditFieldWidget(
                title: "First name",
                data: user?.firstName ?? "Unknown",
              ),
              CustomEditFieldWidget(
                title: "Last name",
                data: user?.lastName ?? "Unknown",
              ),
              CustomEditFieldWidget(
                title: "Email",
                data: user?.email ?? "Unknown",
              ),
              CustomEditFieldWidget(
                title: "Phone",
                data: user?.metadata!.entries.first.value ?? "Unknown",
              ),
              const CustomEditFieldWidget(title: "Password", data: "********"),
            ],
          ),
        );
      },
    );
  }
}
