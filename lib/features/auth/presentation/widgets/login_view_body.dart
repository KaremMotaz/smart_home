import 'package:flutter/material.dart';
import 'login_form_container.dart';
import 'login_header.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        LoginHeader(),
        Expanded(child: LoginFormContainer()),
      ],
    );
  }
}
