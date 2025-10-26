import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/helpers/app_regex.dart';
import '../../../../../core/helpers/extensions.dart';
import '../../../../../core/functions/get_user.dart';
import '../../../data/models/update_user_email_request_body.dart';
import '../../../manager/edit_profile_cubit/edit_profile_cubit.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../core/widgets/bloc_button.dart';

class EditEmailForm extends StatefulWidget {
  const EditEmailForm({super.key});

  @override
  State<EditEmailForm> createState() => _EditEmailFormState();
}

class _EditEmailFormState extends State<EditEmailForm> {
  final TextEditingController emailController = TextEditingController(
    text: getUser()?.email,
  );
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
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
              textInputType: TextInputType.emailAddress,
              hintText: "New Email",
              validator: (value) {
                if (value.isNullOrEmpty()) {
                  return "Please enter your email";
                }
                if (!AppRegex.isEmailValid(value!)) {
                  return "Please enter a valid email";
                }
                return null;
              },
              controller: emailController,
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
      context.read<EditProfileCubit>().updateUserEmail(
        updateUserEmailRequestBody: UpdateUserEmailRequestBody(
          email: emailController.text,
        ),
      );
    }
  }
}
