import 'package:flutter/material.dart';

import '../widgets/logo_card.dart';
import '../widgets/welcome_card.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [Spacer(), LogoCard(), Spacer(), WelcomeCard()],
        ),
      ),
    );
  }
}
