import 'package:flutter/material.dart';
import '../../../../core/theming/text_styles.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Hi Dakolo", style: TextStyles.semiBold24),
        const SizedBox(height: 4),
        Text(
          "Welcome to your smart home",
          style: TextStyles.regular16.copyWith(color: const Color(0xffC3C3C3)),
        ),
      ],
    );
  }
}
