import 'package:flutter/material.dart';
import 'package:smart_home/core/widgets/form_container.dart';
import 'package:smart_home/features/auth/presentation/widgets/login/login_form.dart';
import 'login_header.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        LoginHeader(),
        Expanded(child: FormContainer(child: LoginForm())),
      ],
    );
  }
}
