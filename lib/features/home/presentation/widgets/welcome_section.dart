import 'package:flutter/material.dart';
import 'package:smart_home/core/theming/text_styles.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Hi Dakolo", style: TextStyles.semiBold24),
        SizedBox(height: 4),
        Text(
          "Welcome to your smart home",
          style: TextStyles.regular16.copyWith(color: Color(0xffC3C3C3)),
        ),
      ],
    );
  }
}
