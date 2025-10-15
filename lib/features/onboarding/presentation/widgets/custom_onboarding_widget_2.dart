import 'package:flutter/material.dart';

class CustomOnboardingWidget2 extends StatelessWidget {
  const CustomOnboardingWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Welcome to Smart Home 2222',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Your journey to a smarter home starts here.',
          style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
