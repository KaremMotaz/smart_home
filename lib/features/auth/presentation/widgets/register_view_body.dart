import 'package:flutter/material.dart';

import 'register_form_container.dart';
import 'register_header.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        RegisterHeader(),
        Expanded(child: RegisterFormContainer()),
      ],
    );
  }
}
