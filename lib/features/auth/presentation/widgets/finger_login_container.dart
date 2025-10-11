import 'package:flutter/material.dart';

import 'biometric_bloc_listener.dart';

class FingerLoginContainer extends StatelessWidget {
  const FingerLoginContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(130),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: const BiometricBlocListener(),
    );
  }
}
