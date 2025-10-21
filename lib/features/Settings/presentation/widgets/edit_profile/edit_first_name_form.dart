import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/core/helpers/extensions.dart';
import 'package:smart_home/core/helpers/get_user.dart';
import 'package:smart_home/features/Settings/data/models/update_user_request_body.dart';
import 'package:smart_home/features/Settings/data/models/update_username_request_body.dart';
import 'package:smart_home/features/Settings/manager/edit_profile_cubit/edit_profile_cubit.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../core/widgets/bloc_button.dart';

class EditFirstNameForm extends StatefulWidget {
  const EditFirstNameForm({super.key});

  @override
  State<EditFirstNameForm> createState() => _EditFirstNameFormState();
}

class _EditFirstNameFormState extends State<EditFirstNameForm> {
  final TextEditingController firstNameController = TextEditingController(
    text: getUser()?.firstName,
  );
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    firstNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SizedBox(
        height: MediaQuery.of(context).size.height - 276,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppTextFormField(
              textInputType: TextInputType.text,
              hintText: "New First Name",
              validator: (value) {
                if (value.isNullOrEmpty()) {
                  return "Please enter your first name";
                }
                return null;
              },
              controller: firstNameController,
            ),
            BlocButton<EditProfileCubit, EditProfileState>(
              label: "Save",
              borderRadius: 50,
              buttonHeight: 60,
              isLoading: (state) => state is EditProfileLoading,
              onPressed: () {
                validateThenSave(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void validateThenSave(BuildContext context) {
    if (formKey.currentState!.validate()) {
      context.read<EditProfileCubit>().updateUser(
        updateUserRequestBody: UpdateUserRequestBody(
          firstName: firstNameController.text,
        ),
      );
      context.read<EditProfileCubit>().updateUsername(
        updateUsernameRequestBody: UpdateUsernameRequestBody(
          username: "${firstNameController.text}${getUser()?.lastName}",
        ),
      );
    }
  }
}
