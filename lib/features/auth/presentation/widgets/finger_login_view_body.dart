import 'package:flutter/material.dart';
import 'package:smart_home/core/theming/assets_data.dart';
import 'package:smart_home/features/auth/presentation/widgets/finger_login_container.dart';
import 'package:smart_home/features/auth/presentation/widgets/shadow_container.dart';
import 'package:smart_home/features/auth/presentation/widgets/text_body.dart';

class FingerLoginViewBody extends StatelessWidget {
  const FingerLoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox.expand(
          child: Image.asset(AssetsData.fingerLoginBg, fit: BoxFit.cover),
        ),
        ShadowContainer(),
        TextBody(),
        Positioned(bottom: 0, right: 0, left: 0, child: FingerLoginContainer()),
      ],
    );
  }
}
