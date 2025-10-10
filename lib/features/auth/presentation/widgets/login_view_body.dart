import 'package:flutter/material.dart';
import 'package:smart_home/features/auth/presentation/widgets/login_form_container.dart';
import 'package:smart_home/features/auth/presentation/widgets/login_header.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoginHeader(),
        Expanded(child: LoginFormContainer()),
      ],
    );
  }
}
