import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helpers/app_regex.dart';
import '../../../../../core/helpers/app_validators.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../core/widgets/bloc_button.dart';
import '../../../data/models/register_request_body.dart';
import '../../../manager/register_cubit/register_cubit.dart';
import 'phone_field.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isPasswordObscureText = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          AppTextFormField(
            textInputType: TextInputType.emailAddress,
            hintText: "Email",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your email";
              }
              if (!AppRegex.isEmailValid(value)) {
                return "Please enter a valid email";
              }
              return null;
            },
            controller: emailController,
          ),
          const SizedBox(height: 18),
          AppTextFormField(
            textInputType: TextInputType.text,
            hintText: "First Name",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your first name";
              }
              return null;
            },
            controller: firstNameController,
          ),
          const SizedBox(height: 18),
          AppTextFormField(
            textInputType: TextInputType.text,
            hintText: "Last Name",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your last name";
              }
              return null;
            },
            controller: lastNameController,
          ),
          const SizedBox(height: 18),
          const PhoneField(),
          const SizedBox(height: 18),
          AppTextFormField(
            hintText: "Password",
            isObscureText: isPasswordObscureText,
            controller: passwordController,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isPasswordObscureText = !isPasswordObscureText;
                });
              },
              icon: Icon(
                isPasswordObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validator: AppValidators.validatePassword,
          ),
          const SizedBox(height: 40),
          BlocButton<RegisterCubit, RegisterState>(
            label: "Register",
            borderRadius: 50,
            buttonHeight: 60,
            isLoading: (state) => state is RegisterLoading,
            onPressed: () {
              validateThenRegister(context);
            },
          ),
        ],
      ),
    );
  }

  void validateThenRegister(BuildContext context) {
    if (formKey.currentState!.validate()) {
      context.read<RegisterCubit>().register(
        registerRequestBody: RegisterRequestBody(
          firstName: firstNameController.text,
          lastName: lastNameController.text,
          email: emailController.text,
          credentials: Credentials(
            userName: "${firstNameController.text}${lastNameController.text}",
            password: passwordController.text,
          ),
          metadata: Metadata(
            phoneNumber: context.read<RegisterCubit>().phoneNumber!,
          ),
        ),
      );
    }
  }
}
