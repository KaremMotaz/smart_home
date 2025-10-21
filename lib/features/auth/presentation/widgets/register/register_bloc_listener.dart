import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/functions/build_snack_bar.dart';
import '../../../../../core/functions/error_dialog.dart';
import '../../../../../core/routing/routes.dart';
import '../../../manager/register_cubit/register_cubit.dart';
import 'register_view_body.dart';

class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listenWhen: (previous, current) {
        return current is RegisterSuccess || current is RegisterFailure;
      },
      listener: (context, state) {
        state.whenOrNull(
          registerSuccess: () {
            successSnackBar(context: context, message: "Register Success");
            GoRouter.of(context).go(Routes.loginView);
          },
          registerFailure: (apiErrorModel) {
            errorDialog(
              context: context,
              message: apiErrorModel.message,
              error: apiErrorModel.error ?? "",
            );
          },
        );
      },
      child: const RegisterViewBody(),
    );
  }
}
