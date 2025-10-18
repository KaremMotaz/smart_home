import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_home/core/services/get_it_service.dart';
import 'package:smart_home/core/theming/assets_data.dart';
import 'package:smart_home/features/auth/manager/biometric_cubit/biometric_cubit.dart';
import 'package:smart_home/features/auth/presentation/widgets/biometric/biometric_bloc_listener.dart';
import 'package:smart_home/features/auth/presentation/widgets/biometric/text_body.dart';
import 'package:smart_home/features/auth/presentation/widgets/welcome/shadow_container.dart';

class FingerLoginView extends StatelessWidget {
  const FingerLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
        ),
        child: Scaffold(
          body: Stack(
            children: [
              SizedBox.expand(
                child: Image.asset(AssetsData.fingerLoginBg, fit: BoxFit.cover),
              ),
              const ShadowContainer(),
              const TextBody(),
              BlocProvider(
                create: (context) => getIt<BiometricCubit>(),
                child: Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 80,
                      vertical: 16,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha(130),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: const BiometricBlocListener(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
