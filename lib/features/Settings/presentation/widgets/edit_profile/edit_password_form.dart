import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/core/helpers/app_validators.dart';
import 'package:smart_home/features/Settings/data/models/change_secret_request_body.dart';
import 'package:smart_home/features/Settings/manager/edit_profile_cubit/edit_profile_cubit.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../core/widgets/bloc_button.dart';

class EditPasswordForm extends StatefulWidget {
  const EditPasswordForm({super.key});

  @override
  State<EditPasswordForm> createState() => _EditPasswordFormState();
}

class _EditPasswordFormState extends State<EditPasswordForm> {
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isOldPasswordObscureText = true;
  bool isNewPasswordObscureText = true;

  @override
  void dispose() {
    oldPasswordController.dispose();
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
            Column(
              children: [
                AppTextFormField(
                  hintText: "Old Password",
                  isObscureText: isOldPasswordObscureText,
                  controller: oldPasswordController,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isOldPasswordObscureText = !isOldPasswordObscureText;
                      });
                    },
                    icon: Icon(
                      isOldPasswordObscureText
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                  ),
                  validator: AppValidators.validatePassword,
                ),
                const SizedBox(height: 20),
                AppTextFormField(
                  hintText: "New Password",
                  isObscureText: isNewPasswordObscureText,
                  controller: newPasswordController,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isNewPasswordObscureText = !isNewPasswordObscureText;
                      });
                    },
                    icon: Icon(
                      isNewPasswordObscureText
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                  ),
                  validator: AppValidators.validatePassword,
                ),
              ],
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
      context.read<EditProfileCubit>().changeSecret(
        changeSecretRequestBody: ChangeSecretRequestBody(
          oldSecret: oldPasswordController.text,
          newSecret: newPasswordController.text,
        ),
      );
    }
  }
}
