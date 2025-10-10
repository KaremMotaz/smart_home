import 'package:flutter/material.dart';
import 'package:smart_home/features/auth/presentation/widgets/register_form_container.dart';
import 'package:smart_home/features/auth/presentation/widgets/register_header.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RegisterHeader(),
        Expanded(child: RegisterFormContainer()),
      ],
    );
  }
}
