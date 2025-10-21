import 'package:flutter/material.dart';
import 'package:smart_home/core/helpers/get_user.dart';

import '../../../../../core/theming/app_styles.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Hi ${getUser()?.firstName}", style: AppStyles.semiBold24),
        const SizedBox(height: 4),
        Text(
          "Welcome to your smart home",
          style: AppStyles.regular16.copyWith(color: const Color(0xffC3C3C3)),
        ),
      ],
    );
  }
}
