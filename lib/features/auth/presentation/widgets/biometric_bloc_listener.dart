import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/functions/build_snack_bar.dart';
import '../../../../core/functions/error_dialog.dart';
import '../../../../core/routing/routes.dart';
import '../../manager/biometric_cubit/biometric_cubit.dart';
import '../../manager/biometric_cubit/biometric_state.dart';
import 'fingerprint_shape.dart';

class BiometricBlocListener extends StatelessWidget {
  const BiometricBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<BiometricCubit, BiometricState>(
      listener: (context, state) {
        if (state is BiometricSuccessState) {
          successSnackBar(context: context, message: "Successfully Logged In");
          GoRouter.of(context).go(Routes.homeView);
        } else if (state is BiometricFailureState) {
          errorDialog(context: context, message: state.message, error: "");
        }
      },
      child: GestureDetector(
        onTap: () {
          context.read<BiometricCubit>().authenticate();
        },
        child: FingerprintShape(),
      ),
    );
  }
}
