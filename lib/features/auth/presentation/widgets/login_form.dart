import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/login_request_body.dart';
import '../../manager/login_cubit/login_cubit.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../../../core/widgets/bloc_button.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isPasswordObscureText = true;

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          AppTextFormField(
            textInputType: TextInputType.name,
            hintText: "Username",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your username";
              }
              return null;
            },
            controller: usernameController,
          ),
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
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your password";
              }
              return null;
            },
          ),
          const SizedBox(height: 40),
          BlocButton<LoginCubit, LoginState>(
            label: "Login",
            borderRadius: 50,
            buttonHeight: 60,
            isLoading: (state) => state is LoginLoading,
            onPressed: () {
              validateThenLogin(context);
            },
          ),
        ],
      ),
    );
  }

  void validateThenLogin(BuildContext context) {
    if (formKey.currentState!.validate()) {
      context.read<LoginCubit>().login(
        loginRequestBody: LoginRequestBody(
          username: usernameController.text,
          password: passwordController.text,
        ),
      );
    }
  }
}
