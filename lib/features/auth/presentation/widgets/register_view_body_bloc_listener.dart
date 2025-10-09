import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/features/auth/manager/register_cubit/register_cubit.dart';
import 'package:smart_home/features/auth/presentation/widgets/register_view_body.dart';
import '../../../../core/functions/build_snack_bar.dart';
import '../../../../core/functions/error_dialog.dart';

class RegisterViewBodyBlocListener extends StatelessWidget {
  const RegisterViewBodyBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterSuccessState) {
          successSnackBar(context: context, message: "Register Success");
          GoRouter.of(context).pop();
        }
        if (state is RegisterFailureState) {
          errorDialog(
            context: context,
            message: state.message,
            error: state.error,
          );
        }
      },
      child: const RegisterViewBody(),
    );
  }
}
