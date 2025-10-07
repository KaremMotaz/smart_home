import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_auth/local_auth.dart';
import 'package:smart_home/core/theming/assets_data.dart';
import 'package:smart_home/features/auth/data/biometric_repo.dart';
import 'package:smart_home/features/auth/logic/biometric_cubit/biometric_cubit.dart';
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
        BlocProvider(
          create: (context) => BiometricCubit(
            biometricRepo: BiometricRepo(LocalAuthentication()),
          ),
          child: Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: FingerLoginContainer(),
          ),
        ),
      ],
    );
  }
}
