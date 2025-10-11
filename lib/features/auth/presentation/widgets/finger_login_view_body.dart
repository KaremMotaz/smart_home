import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/get_it_service.dart';
import '../../../../core/theming/assets_data.dart';
import '../../manager/biometric_cubit/biometric_cubit.dart';
import 'finger_login_container.dart';
import 'shadow_container.dart';
import 'text_body.dart';

class FingerLoginViewBody extends StatelessWidget {
  const FingerLoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox.expand(
          child: Image.asset(AssetsData.fingerLoginBg, fit: BoxFit.cover),
        ),
        const ShadowContainer(),
        const TextBody(),
        BlocProvider(
          create: (context) => getIt<BiometricCubit>(),
          child: const Positioned(
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
