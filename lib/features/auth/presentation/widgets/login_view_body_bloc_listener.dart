import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/features/auth/manager/login_cubit/login_cubit.dart';
import 'package:smart_home/features/auth/presentation/widgets/login_view_body.dart';
import '../../../../core/functions/build_snack_bar.dart';
import '../../../../core/functions/error_dialog.dart';
import '../../../../core/routing/routes.dart';

class LoginViewBodyBlocListener extends StatelessWidget {
  const LoginViewBodyBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccessState) {
          successSnackBar(context: context, message: "Login Success");
          GoRouter.of(context).pushReplacement(Routes.homeView);
        }
        if (state is LoginFailureState) {
          errorDialog(
            context: context,
            message: state.apiErrorModel.message,
            error: state.apiErrorModel.error ?? "",
          );
        }
      },
      child: const LoginViewBody(),
    );
  }
}
