import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/core/helpers/get_user.dart';
import 'package:smart_home/features/Settings/data/models/update_user_request_body.dart';
import 'package:smart_home/features/Settings/manager/edit_profile_cubit/edit_profile_cubit.dart';
import 'package:smart_home/features/auth/presentation/widgets/register/phone_field.dart';
import '../../../../../core/widgets/bloc_button.dart';

class EditPhoneForm extends StatefulWidget {
  const EditPhoneForm({super.key});

  @override
  State<EditPhoneForm> createState() => _EditPhoneFormState();
}

class _EditPhoneFormState extends State<EditPhoneForm> {
  final TextEditingController phoneController = TextEditingController(
    text: getUser()?.metadata.entries.first.key,
  );
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    phoneController.dispose();
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
            const PhoneField(),
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
          metadata: {"phoneNumber": phoneController.text},
        ),
      );
    }
  }
}
