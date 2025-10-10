import 'package:flutter/material.dart';
import 'package:smart_home/features/auth/presentation/widgets/register_form.dart';

class RegisterFormContainer extends StatelessWidget {
  const RegisterFormContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: RegisterForm(),
      ),
    );
  }
}
