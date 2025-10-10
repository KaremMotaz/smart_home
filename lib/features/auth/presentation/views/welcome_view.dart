import 'package:flutter/material.dart';
import 'package:smart_home/features/auth/presentation/widgets/logo_card.dart';
import 'package:smart_home/features/auth/presentation/widgets/welcome_card.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [Spacer(), LogoCard(), Spacer(), WelcomeCard()],
        ),
      ),
    );
  }
}
