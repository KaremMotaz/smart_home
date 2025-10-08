import 'package:flutter/material.dart';
import 'package:smart_home/features/auth/presentation/widgets/biometric_bloc_listener.dart';

class FingerLoginContainer extends StatelessWidget {
  const FingerLoginContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(130),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: BiometricBlocListener(),
    );
  }
}
