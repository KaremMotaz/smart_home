import 'package:flutter/material.dart';
import 'package:smart_home/core/widgets/form_container.dart';
import 'package:smart_home/features/auth/presentation/widgets/register/register_form.dart';
import 'register_header.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        RegisterHeader(),
        Expanded(child: FormContainer(child: RegisterForm())),
      ],
    );
  }
}
