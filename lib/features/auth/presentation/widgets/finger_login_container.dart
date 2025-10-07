import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smart_home/core/theming/assets_data.dart';
import 'package:smart_home/core/theming/colors_manager.dart';
import 'package:smart_home/core/theming/text_styles.dart';
import 'package:smart_home/features/auth/logic/biometric_cubit/biometric_cubit.dart';

class FingerLoginContainer extends StatelessWidget {
  const FingerLoginContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(130),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: GestureDetector(
        onTap: () {
          context.read<BiometricCubit>().authenticate();
        },
        child: Column(
          children: [
            Text(
              "Place your finger to open",
              style: TextStyles.regular14.copyWith(color: Color(0xff404344)),
            ),
            SizedBox(height: 16),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  height: 78,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        ColorsManager.darkerBlue,
                        ColorsManager.darkBlue,
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(AssetsData.fingerIcon),
                ),
                Positioned(
                  bottom: -16,
                  child: SvgPicture.asset(AssetsData.fingerShape, width: 220),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
